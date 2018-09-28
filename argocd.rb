class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.9.2/argocd-darwin-amd64"
    sha256 "af0d3f8d8849527ea84e1b766ae6e7b8048bde6b8a2fccef421cce789a09e5b8"
    version "0.9.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
