# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.8.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "f390fd3fb58012e3ab60a94255b4c5e96a748fac5e24608b9d9f1b08e4c0524b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "70d5cb925363f5dd51a3bdf144ed352e4150e6b2eb94d8c76db86c1e6ab98ba9"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.8.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
