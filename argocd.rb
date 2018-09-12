class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v0.8.2/argocd-darwin-amd64"
    sha256 "40f6dbf842215827b8f87e82214eca072bdd4be75fe44ec72e91fb56c21d5a1b"
    version "0.8.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
