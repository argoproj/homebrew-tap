# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.0/argocd-darwin-amd64"
    sha256 "ee2620dd57db057f764bc2b7b112d2bed52fc5d4ca7e772ad20f27c57d64ea54"
    version "1.0.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
