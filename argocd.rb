# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.6"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "626a6a258ee106837a320cd9b498fe4b01e0a1b19c1ccd65e285ea08d0767032"
    elsif OS.linux?
      kernel = "linux"
      sha256 "44f9f923cf60958edf2351d88dc7fcb930f6af6cb9055624a813dfefd59b4598"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.6/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
