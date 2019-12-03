# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "615ed1d5432063318c79dc102a8527537b253eab980a624e3d7f573359bf8cfa"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d2da196ccc3d99c6b4d0e0a7c4ba00aedf7255904c83de15fbf9d61a0cca586f"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
