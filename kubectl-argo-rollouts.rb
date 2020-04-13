# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.7.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "e98c2bb5a5bb4594ec44a79021c446223bad0f0cdbe4162f4fbab0b735867c8d"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d455fb58def069ca779a581d684c85b18de4000622b710b9753b9d3af7582519"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.7.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
