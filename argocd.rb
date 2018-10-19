class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.10.0/argocd-darwin-amd64"
    sha256 "82989f8eea9c4dd9e31e75da30579e869505651c1ddf79163629ed64ce916225"
    version "0.10.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
