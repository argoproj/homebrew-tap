# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.7.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "4c3ec8ae59aa6dfa9c62a62de9ade8a14e75af56a4e8b939a3e774c2ac0f5e4b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "a28579d03ad8d87fc726cf018178117f4650b643ddc4b1d2397a0f7d59834211"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.7.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
