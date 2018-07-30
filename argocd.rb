class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.7.0/argocd-darwin-amd64"
    sha256 "c9e6e48565f2b2cde982ab772a8833ec793e98a74c519d183027312832f6b8c2"
    version "0.7.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
