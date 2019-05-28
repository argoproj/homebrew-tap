# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.1/argocd"
    sha256 "c06cea2e326eb6edc1ab33d3bcb098bf25ea38de47399c3031e95e303eab0bf5"
    version "1.0.1"

    bottle :unneeded

    def install
        bin.install "argocd"
        mv bin/"argocd", bin/"argocd"
    end
end
