# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.7.6"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "85a0a5a22859fd6cdab4d597f1cb4a4756205b7d1989786df8e6542b32bcd349"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d35dab08eb84186c9098d56f7fb0021c0f7f67297eaa36bef2c1bcbdcd442fa9"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.7.6/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
