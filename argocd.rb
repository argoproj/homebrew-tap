# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.7.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "1b0b70d1a1a828ae7706386bf0f72b42f6ae41b5b1774d2a7f52c1b7f0a91041"
    elsif OS.linux?
      kernel = "linux"
      sha256 "70b178b2f6ef31bfb7cdbfe1fd04d1cc265a95b13acd3e6443116d92bc03a87e"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.7.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
