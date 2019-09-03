#!/bin/sh

if [ "$#" -lt 2 ]; then
  echo "Usage: ./update.sh ~/go/src/github.com/argoproj/argo-cd/dist/argocd-darwin-amd64 ~/go/src/github.com/argoproj/argo-cd/dist/argocd-linux-amd64"
  exit 1
fi

OSX_BINPATH="$1"
LINUX_BINPATH="$2"
BINFULLNAME=$(basename "${OSX_BINPATH}")
BINSHORTNAME=$(echo "${BINFULLNAME}" | cut -d- -f1)
OSX_SHA256=$(shasum -a 256 "${OSX_BINPATH}" | awk '{print $1}')
LINUX_SHA256=$(shasum -a 256 "${LINUX_BINPATH}" | awk '{print $1}')

if [ "${BINSHORTNAME}" = "argocd" ]; then
  CLASSNAME="Argocd"
  VERSION=$({ ${OSX_BINPATH} version --client --short || ${LINUX_BINPATH} version --client --short; } 2>/dev/null | awk -F'[v+]' '{print $2}')
  DESC="GitOps Continuous Delivery for Kubernetes"
elif [ "${BINSHORTNAME}" = "argo" ]; then
  CLASSNAME="Argo"
  VERSION=$({ ${OSX_BINPATH} verison --short || ${LINUX_BINPATH} version --short; } 2>/dev/null | awk -F'[v+]' '{print $2}')
  DESC="Get stuff done with container-native workflows for Kubernetes."
else
  echo "Unsupported binary: ${BINFULLNAME}"
  exit 1
fi

TEMPLATE="# This is an auto-generated file. DO NOT EDIT
class ${CLASSNAME} < Formula
    desc \"${DESC}\"
    homepage \"https://argoproj.io\"
    baseurl = \"https://github.com/argoproj/argo-cd/releases/download\"
    version \"${VERSION}\"

    bottle :unneeded

    if OS.mac?
      kernel = \"darwin\"
      sha256 \"${OSX_SHA256}\"
    elsif OS.linux?
      kernel = \"linux\"
      sha256 \"${LINUX_SHA256}\"
    end

    @@bin_name = \"${BINSHORTNAME}-\" + kernel + \"-amd64\"
    url baseurl + \"/v${VERSION}/\" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/\"${BINSHORTNAME}\"
    end
end"

echo "${TEMPLATE}" > "${BINSHORTNAME}.rb"