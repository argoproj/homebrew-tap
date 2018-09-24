class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.9.1/argocd-darwin-amd64"
    sha256 "63a18c67bebeb79785ac3aed0c1df400d6cb8faecca42589e0a345fddd220173"
    version "0.8.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
