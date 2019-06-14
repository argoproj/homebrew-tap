# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.2/argocd-darwin-amd64"
    sha256 "1f820224d35e9ddc6898a32dcb4533d31d4c62a984233835e538a2f9fc116263"
    version "1.0.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
