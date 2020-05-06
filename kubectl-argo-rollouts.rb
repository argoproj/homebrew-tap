# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.8.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "24a7a86b2ca3eb732947a4c92658be7d0909aa50c31bdc62a8158a9e16cffb27"
    elsif OS.linux?
      kernel = "linux"
      sha256 "a67000ea0e344cd094525f784cd02d5b4de9a4b4cc5c7d67a4d77a5caeca28c7"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.8.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
