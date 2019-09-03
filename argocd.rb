# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.1.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "bef39f7d2d99880aacf8ec3f8ae3e5aa00efbe8569e566b116b9400411d1e9ca"
    elsif OS.linux?
      kernel = "linux"
      sha256 "f186759409f7a3fe6ea6633b8d14ead7b16815b84981ba79fc1dd048f77d7f45"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.1.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
