# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.11.0/argocd-darwin-amd64"
    sha256 "fbb5b1423a5c798380323e2c64b50ed55fa91e80c6381f87120ab26c26788b3b"
    version "0.11.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
