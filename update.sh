#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: ./update.sh ~/go/src/github.com/argoproj/argo-cd/dist/argocd-darwin-amd64"
  exit 1
fi

BINPATH=$1
BINFULLNAME=$(basename ${BINPATH})
BINSHORTNAME=$(echo ${BINFULLNAME} | cut -d- -f1)
SHA256=$(shasum -a 256 ${BINPATH} | awk '{print $1}')

if [ "${BINSHORTNAME}" = "argocd" ]; then
  CLASSNAME="Argocd"
  VERSION=$(${BINPATH} version --client --short | awk -F'[v+]' '{print $2}')
  DESC="GitOps Continuous Delivery for Kubernetes"
elif [ "${BINSHORTNAME}" = "argo" ]; then
  CLASSNAME="Argo"
  VERSION=$(${BINPATH} version --short | awk -F'[v+]' '{print $2}')
  DESC="Get stuff done with container-native workflows for Kubernetes."
else
  echo "Unsupported binary: ${BINFULLNAME}"
  exit 1
fi

TEMPLATE="# This is an auto-generated file. DO NOT EDIT
class ${CLASSNAME} < Formula
    desc \"${DESC}\"
    homepage \"https://argoproj.io\"
    url \"https://github.com/argoproj/argo-cd/releases/download/v${VERSION}/${BINFULLNAME}\"
    sha256 \"${SHA256}\"
    version \"${VERSION}\"

    bottle :unneeded

    def install
        bin.install \"${BINFULLNAME}\"
        mv bin/\"${BINFULLNAME}\", bin/\"${BINSHORTNAME}\"
    end
end"

echo "${TEMPLATE}" > "${BINSHORTNAME}.rb"