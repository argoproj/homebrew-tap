# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.0-rc3/argocd-darwin-amd64"
    sha256 "a08f3eaf3228f94f61d986a7b02f7514f0a1c5378f28c2edaf69c64f8fd8dee7"
    version "1.0.0-rc3"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
