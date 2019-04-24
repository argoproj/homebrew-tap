# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.0-rc1/argocd-darwin-amd64"
    sha256 "8db1c87051dccae41081f2d33d38d70d06ccc6f15f03d99b704db9488f03c8d7"
    version "1.0.0-rc1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
