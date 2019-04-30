# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.12.3/argocd-darwin-amd64"
    sha256 "ef7bb3c344ca35e4c7fa846773828b844a9e2f2a73ea8251e3ae389d3459bc12"
    version "0.12.3"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
