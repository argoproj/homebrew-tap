# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.7.2"

    if OS.mac?
      kernel = "darwin"
      sha256 "cd5c9f39150189c844f7f4b37c149d77e8235edd5d3b48abbf681fc915226d34"
    elsif OS.linux?
      kernel = "linux"
      sha256 "af7eac6593bbcac4e219960995e78f6a4b3bb1e6aa47e15a495beb1a4d2da177"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.7.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
