# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "6794682fbdcd7cc34145fceab388149d66edc5308fd5dec516e9e01fa30d09e4"
    elsif OS.linux?
      kernel = "linux"
      sha256 "b50607f3f81347cc25ba7812fa1cbeaaa5ff0e29ce71da8f4ed474200be867b9"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
