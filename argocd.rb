# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.4"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "df8c4ad3a226a90079f822e8c356f589642a22a65784f5e46eb694c69c54d877"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d183dc69da78ae74977ecffebab0a2e431b7129d4e459354d278af59f6ab52a5"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.4/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
