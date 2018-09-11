class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.8.1/argocd-darwin-amd64"
    sha256 "9c03e4318066a8724c3751816a43063c10479b4b04256dd997a24b73409f3322"
    version "0.8.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
