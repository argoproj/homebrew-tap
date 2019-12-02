# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "d266cd7aec1a584f31958103baa491c4fb022cf6a57657a98d4cc34eb5c80414"
    elsif OS.linux?
      kernel = "linux"
      sha256 "c5f8908eccdb322ff3170ac0c749af7897e6c5a31cd964f1ec792acf2493e8a9"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
