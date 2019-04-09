# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.12.1/argocd-darwin-amd64"
    sha256 "26e79fb1d329fcf2ff7bd342e8e7a6323fd70154d115dfdc34f9d41d527f0a44"
    version "0.12.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
