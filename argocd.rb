# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "82d949bec2e45d7c6af530bda5bb591ee0652fb45c86e4bc71e700da3b53be92"
    elsif OS.linux?
      kernel = "linux"
      sha256 "91158dc194356ec655c189f44e6212ce11d2ea57d61d31014c130cd46aba6c1f"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
