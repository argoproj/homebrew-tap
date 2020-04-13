# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.6.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "f281f8788cd8b157689e6a5ac663ac6d6ac2c84b1c831a79849a9507843f0468"
    elsif OS.linux?
      kernel = "linux"
      sha256 "77b0cd9e5b3b15aaf88790535de80f3f9a73cae70694588dff7e76064b448110"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.6.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
