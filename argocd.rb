# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.11.0-rc6/argocd-darwin-amd64"
    sha256 "7d98ceb6b461b95f3e31d92ace743197360c3bb6ef52be430b0de92d04659bba"
    version "0.11.0-rc6"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
