# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.11.1/argocd-darwin-amd64"
    sha256 "6d9ce3ef8938fb45c10062a292c962fa10ea6293ecd5c1ef0c391d5a4a3cbe29"
    version "0.11.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
