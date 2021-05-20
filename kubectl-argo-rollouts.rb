# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.0.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "de99a2d688f7fb3b49d639877f4b4adbb65c5f9241ce4e74fe74cfe4b6358417"
    elsif OS.linux?
      kernel = "linux"
      sha256 "906d80e77101854899ce8e9e2d4c83b0fee1961c3ea22c77acd5cbdfe83aca65"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.0.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
