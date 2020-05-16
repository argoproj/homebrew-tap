# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.5"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "521bffa5bd6096755e8ec3f8f0f7b5839f7dff81cc70ce6103af2e97d7628ba8"
    elsif OS.linux?
      kernel = "linux"
      sha256 "9e1fe8f87e01780775a707cc9f9591eafc7866f04517ea16e89a707679c67b29"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.5/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
