# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "192756be229b31d568b588992c3f01413f3fae8354c753247be35deff963213e"
    elsif OS.linux?
      kernel = "linux"
      sha256 "7363e21991d31d7ad0d7b1602d388116bd81b7bf22b69ca85ccf5275a37c57d7"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
