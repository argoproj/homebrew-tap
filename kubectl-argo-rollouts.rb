# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.8.3"

    if OS.mac?
      kernel = "darwin"
      sha256 "78562a0f9ce18d2253216c0114a5fd90a597655dacf0bad2a6942c2c9e5a5109"
    elsif OS.linux?
      kernel = "linux"
      sha256 "6f60f3608ffc1e6b59c05ffc979d80ad1acd886d7fcbffb1e8e0c50291674373"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.8.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
