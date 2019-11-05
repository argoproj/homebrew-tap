# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "1.2.5"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "586990c261dbedbe8fd9ca6a7d526cbebc8f0f9a061bd152194b9838a2394aad"
    elsif OS.linux?
      kernel = "linux"
      sha256 "e02dd551d53759d643ea7ac058288bd32d872860f2de66737e0fbde128f49504"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.2.5/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
