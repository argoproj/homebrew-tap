# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "e84483b0e61a4e8903520fb5955c840f78c43698f0d958758f0bc67aa2927c74"
    elsif OS.linux?
      kernel = "linux"
      sha256 "fa2e96b5117cb5325b753f5df5585864aac97165d61c01e304d740955a112601"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
