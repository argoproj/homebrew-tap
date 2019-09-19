# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "10fde92c010fc0c17fc6f6d22aa8a643158982926cbc2830888ab8a5efa7f1a0"
    elsif OS.linux?
      kernel = "linux"
      sha256 "7ad6642acc2ff83bf7411e22c296dafa1358ad49a3ce520b9f72a79a5a734043"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
