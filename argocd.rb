# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "d5e16b9edb8222e89ee5405ccfd7f55b2495ac58e857cbcfa5b9566d6204d23d"
    elsif OS.linux?
      kernel = "linux"
      sha256 "bf038fba5984c3315a4d0371188014e31b2d41552bd830d24214a6a6d95db1fc"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
