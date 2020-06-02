# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.6"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "f42ad90b604e52abc0458095750a43bd08df3ff66026f70a9e8481e88c3c8ca9"
    elsif OS.linux?
      kernel = "linux"
      sha256 "7b66af9f3bf654a4dd08685300ae41f1669495e53aa8d7a632979f439a16fe06"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.6/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
