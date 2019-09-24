# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "6974989e5f8217ccf72591dfb168e71081916fc140fea57853d2a01eac50483f"
    elsif OS.linux?
      kernel = "linux"
      sha256 "83f2973a8a7fe7b257e8d62d888774a84a512e2f3d340d4191427710a32945f1"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
