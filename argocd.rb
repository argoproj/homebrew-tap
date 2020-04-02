# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "259569feaca59db0567f70ee7dad26bd9dbf75b4cf125f28e28fdd32974eabac"
    elsif OS.linux?
      kernel = "linux"
      sha256 "21fbc38c21bea6d0a63977439edd9561970424b03e7615a26f62f5126287ee6c"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
