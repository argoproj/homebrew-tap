# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.11.2/argocd-darwin-amd64"
    sha256 "d16a0ec2c9dcb5ffd7b27efbbbaf12780ce5ef52067e5c8742ba5fddb0c3fda0"
    version "0.11.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
