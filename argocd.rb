class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.7.1/argocd-darwin-amd64"
    sha256 "707f20fcf430c7da1c7ec6e51da954e402f983838add521bdd2b256984bed9a9"
    version "0.7.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
