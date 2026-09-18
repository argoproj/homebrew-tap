#!/bin/sh

set -e -x

if [ "$#" -lt 2 ]; then
  echo "Usage: ./update.sh <argo|argocd|kubectl-argo-rollouts> VERSION"
  exit 1
fi

CLI_NAME="$1"
VERSION="$2"
BREW_VERSION="$3"

if [ "${CLI_NAME}" = "argocd" ]; then
  URL_BASE="https://github.com/argoproj/argo-cd/releases/download"
  CLASSNAME="Argocd"
  DESC="GitOps Continuous Delivery for Kubernetes"
elif [ "${CLI_NAME}" = "argo" ]; then
  URL_BASE="https://github.com/argoproj/argo/releases/download"
  CLASSNAME="Argo"
  DESC="Get stuff done with container-native workflows for Kubernetes."
elif [ "${CLI_NAME}" = "kubectl-argo-rollouts" ]; then
  URL_BASE="https://github.com/argoproj/argo-rollouts/releases/download"
  CLASSNAME="KubectlArgoRollouts"
  DESC="Kubectl Argo Rollouts Plugin."
else
  echo "Unsupported binary: ${CLI_NAME}"
  exit 1
fi

required_sha256() {
  ASSET_NAME="$1"
  BINPATH="/tmp/${ASSET_NAME}"

  curl --fail -L --retry 3 --connect-timeout 10 --max-time 120 -o "${BINPATH}" -s "${URL_BASE}/${VERSION}/${ASSET_NAME}" || (echo "Failed to curl (${URL_BASE}/${VERSION}/${ASSET_NAME})" && exit 1)
  shasum -a 256 "${BINPATH}" | awk '{print $1}'
}

optional_sha256() {
  ASSET_NAME="$1"
  BINPATH="/tmp/${ASSET_NAME}"

  if curl --fail -L --retry 3 --connect-timeout 10 --max-time 120 -o "${BINPATH}" -s "${URL_BASE}/${VERSION}/${ASSET_NAME}"; then
    shasum -a 256 "${BINPATH}" | awk '{print $1}'
  fi
}

DARWIN_AMD64_SHA256=$(required_sha256 "${CLI_NAME}-darwin-amd64")
DARWIN_ARM64_SHA256=$(optional_sha256 "${CLI_NAME}-darwin-arm64")
LINUX_AMD64_SHA256=$(required_sha256 "${CLI_NAME}-linux-amd64")
LINUX_ARM64_SHA256=$(optional_sha256 "${CLI_NAME}-linux-arm64")

CLASS_POSTFIX=$(echo ${BREW_VERSION} | tr -d '.')
CLASS_POSTFIX=$(echo ${CLASS_POSTFIX} | sed "s/@/AT/g")
OUTPUT="${CLI_NAME}${BREW_VERSION}.rb"
cat > "${OUTPUT}" <<EOF
# This is an auto-generated file. DO NOT EDIT
class ${CLASSNAME}${CLASS_POSTFIX} < Formula
    desc "${DESC}"
    homepage "https://argoproj.io"
    baseurl = "${URL_BASE}"
    version "${VERSION}"
EOF

FIRST_CONDITION="true"
emit_case() {
  CONDITION="$1"
  KERNEL="$2"
  ARCH="$3"
  SHA256="$4"

  if [ -z "${SHA256}" ]; then
    return
  fi

  if [ "${FIRST_CONDITION}" = "true" ]; then
    echo "" >> "${OUTPUT}"
    echo "    if ${CONDITION}" >> "${OUTPUT}"
    FIRST_CONDITION="false"
  else
    echo "    elsif ${CONDITION}" >> "${OUTPUT}"
  fi

  cat >> "${OUTPUT}" <<EOF
      kernel = "${KERNEL}"
      arch = "${ARCH}"
      sha256 "${SHA256}"
EOF
}

if [ -n "${DARWIN_ARM64_SHA256}" ]; then
  emit_case "OS.mac? && Hardware::CPU.arm?" "darwin" "arm64" "${DARWIN_ARM64_SHA256}"
  emit_case "OS.mac? && Hardware::CPU.intel?" "darwin" "amd64" "${DARWIN_AMD64_SHA256}"
else
  emit_case "OS.mac?" "darwin" "amd64" "${DARWIN_AMD64_SHA256}"
fi
emit_case "OS.linux? && Hardware::CPU.arm?" "linux" "arm64" "${LINUX_ARM64_SHA256}"
emit_case "OS.linux? && Hardware::CPU.intel?" "linux" "amd64" "${LINUX_AMD64_SHA256}"

cat >> "${OUTPUT}" <<EOF
    end

    @@bin_name = "${CLI_NAME}-" + kernel + "-" + arch
    url baseurl + "/${VERSION}/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"${CLI_NAME}"
    end
end
EOF
