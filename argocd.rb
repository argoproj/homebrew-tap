# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.11.0-rc4/argocd-darwin-amd64"
    sha256 "9986e69c5188d80fb93751dbab3577da3b683acb5ae9af971218ffdddf68e0f4"
    version "0.11.0-rc4"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
