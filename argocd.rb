# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.4"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "1d2967abe2ea9ef3bf3d478e1c1d989f99648720039976fb9d9393b5953ad88b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "6d7192a6b00a36963737c68157cc7c98c4fe6cca9fc4f8df5a5d14249d3d846e"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.4/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
