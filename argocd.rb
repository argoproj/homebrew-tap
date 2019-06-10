# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo-cd/releases/download/v1.0.1/argocd-darwin-amd64"
    sha256 "bf568447e423d730ca0325fcb718edf343ffbfa4d43ab7d7ab48868094193935"
    version "1.0.1"

    bottle :unneeded

    def install
        bin.install "argocd-darwin-amd64"
        mv bin/"argocd-darwin-amd64", bin/"argocd"

        # Ensure argocd is executable
        require "fileutils"
        FileUtils.chmod("+x","#{bin}/argocd")

        # Install bash completion
        output = Utils.popen_read("#{bin}/argocd completion bash")
        (bash_completion/"argocd").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/argocd completion zsh")
        (zsh_completion/"_argocd").write output
    end
end
