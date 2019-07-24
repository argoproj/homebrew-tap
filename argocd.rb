# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.1.1/argocd-darwin-amd64"
    sha256 "2fb672aa496ca9807a5afe31367ff60cfd946228f5504dc3571ffcd5253788e4"
    version "1.1.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
