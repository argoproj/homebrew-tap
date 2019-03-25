# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.12.0/argocd-darwin-amd64"
    sha256 "a2bc80b6ec0dbaf3090eabd9fec0abbb89057ea581c01c8e2065e2bbdc8e3bdb"
    version "0.12.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
