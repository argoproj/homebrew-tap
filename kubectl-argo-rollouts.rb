# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.0.4"

    if OS.mac?
      kernel = "darwin"
      sha256 "98ff3334a7e136fbbb74d7e73064d921baeb94ca1d64fe2d4010837ae6601a8e"
    elsif OS.linux?
      kernel = "linux"
      sha256 "1cbcab60b96449c7b9af35ae77c89971d6c8bd25cee8857fee3cbc4692a39396"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.0.4/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
