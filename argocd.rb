# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.5"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "dac4db6d3edd1d3b54664bfe46f333f615eafe3741a9c4ffa9e43df7ab7aba47"
    elsif OS.linux?
      kernel = "linux"
      sha256 "94900db8194104f4714665c350ca7e849cb27d224965a994b2f4da1729aa00ba"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.5/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
