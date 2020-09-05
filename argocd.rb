# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.7.4"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "e693782192ecef4f7846ad2b21b1574682e700747f94c5a256b5731331a2eec2"
    elsif OS.linux?
      kernel = "linux"
      sha256 "2a628f3a8ec3cca794d0cd6d1fca5c60e517cc88f244ce98ed91f35f39cd0ab2"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.7.4/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
