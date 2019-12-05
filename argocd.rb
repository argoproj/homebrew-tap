# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.4"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "4426ff42ec592c65e4672e5ff248831c9d4f347c24f8b948b60d971a4cd95844"
    elsif OS.linux?
      kernel = "linux"
      sha256 "6d19e06a1d26a5ace6e56b5cbb8ae0d91d47efc39fcbe60d6f7fdb46eb91634a"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.4/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
