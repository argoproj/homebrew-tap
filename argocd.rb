# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.6.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "ec9e9375d95deb199febb77cf06209fbe1d311a87513add2b45e27692e66a363"
    elsif OS.linux?
      kernel = "linux"
      sha256 "9d305b644dd091a48bf13f5216c94c448b6bec90ba0b61fb5e8238e5aab86379"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.6.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
