# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.12.2/argocd-darwin-amd64"
    sha256 "2deb68d98be7d753572ae7953a3239d326ca969de9c3596faa1d5521b637d91f"
    version "0.12.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
