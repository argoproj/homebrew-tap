# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.1.2/argocd-darwin-amd64"
    sha256 "bef39f7d2d99880aacf8ec3f8ae3e5aa00efbe8569e566b116b9400411d1e9ca"
    version "1.1.2"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"
    end
end
