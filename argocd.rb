class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.8.0/argocd-darwin-amd64"
    sha256 "bf6db6cc6fc05799686f297ec6d77e931db49055b6e1d9cfe74b55fc4ae9b2cf"
    version "0.8.0"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
