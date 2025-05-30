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

# OSX
OSX_CLI_NAME="${CLI_NAME}-darwin-amd64"
OSX_BINPATH="/tmp/${OSX_CLI_NAME}"
curl --fail -L -o ${OSX_BINPATH} -s "${URL_BASE}/${VERSION}/${OSX_CLI_NAME}" || (echo "Failed to curl (${URL_BASE}/${VERSION}/${OSX_CLI_NAME})" && exit 1)
OSX_SHA256=$(shasum -a 256 "${OSX_BINPATH}" | awk '{print $1}')

# Linux
LINUX_CLI_NAME="${CLI_NAME}-linux-amd64"
LINUX_BINPATH="/tmp/${LINUX_CLI_NAME}"
curl --fail -L -o ${LINUX_BINPATH} -s "${URL_BASE}/${VERSION}/${LINUX_CLI_NAME}" || (echo "Failed to curl (${URL_BASE}/${VERSION}/${LINUX_CLI_NAME})" && exit 1)
LINUX_SHA256=$(shasum -a 256 "${LINUX_BINPATH}" | awk '{print $1}')

CLASS_POSTFIX=$(echo ${BREW_VERSION} | tr -d '.')
CLASS_POSTFIX=$(echo ${CLASS_POSTFIX} | sed "s/@/AT/g")
TEMPLATE="# This is an auto-generated file. DO NOT EDIT
class ${CLASSNAME}${CLASS_POSTFIX} < Formula
    desc \"${DESC}\"
    homepage \"https://argoproj.io\"
    baseurl = \"${URL_BASE}\"
    version \"${VERSION}\"

    if OS.mac?
      kernel = \"darwin\"
      sha256 \"${OSX_SHA256}\"
    elsif OS.linux?
      kernel = \"linux\"
      sha256 \"${LINUX_SHA256}\"
    end

    @@bin_name = \"${CLI_NAME}-\" + kernel + \"-amd64\"
    url baseurl + \"/${VERSION}/\" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/\"${CLI_NAME}\"
      kubectl_plugin_completion = <<~EOS
        #!/usr/bin/env sh
        # Call the __complete command passing it all arguments
        kubectl argo rollouts __complete \"\$@\"
      EOS

      (bin/\"kubectl_complete-argo-rollouts\").write(kubectl_plugin_completion)
      chmod 0755, bin/\"kubectl_complete-argo-rollouts\"
    end
end"

echo "${TEMPLATE}" > "${CLI_NAME}${BREW_VERSION}.rb"
