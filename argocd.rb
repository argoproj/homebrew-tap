# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.0-rc1/argocd-darwin-amd64"
    sha256 "4998352cc70086ea9026bc1921777c8b5c7f90d53a2e1346679fbcabae97d537"
    version "1.0.0-rc1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
