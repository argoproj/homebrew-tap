# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.10.5/argocd-darwin-amd64"
    sha256 "7e1e8fae509157bd9c91029c501e72ca47367ce477553b9ede6c0b845732bf32"
    version "0.10.5"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
