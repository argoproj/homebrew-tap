# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.3.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "07b22d3dd1fb2dcc3aafeebcae4b95e2f50610101527b09a6a09b74821a42a2d"
    elsif OS.linux?
      kernel = "linux"
      sha256 "3dce5b67626409edf47d66564590f96c88ca611524e851350c73920d532e2529"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.3.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
