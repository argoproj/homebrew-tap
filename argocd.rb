class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.7.2/argocd-darwin-amd64"
    sha256 "924c171c8aad2c63654ae595bc4e8a9c5e382781c93d9efb675ac505566257f7"
    version "0.7.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
