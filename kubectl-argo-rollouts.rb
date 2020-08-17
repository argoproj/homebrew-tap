# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.9.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "c191665931ac1e9b4424b84ae31084f855e930209d35bbf1996d5d3fc2a133e1"
    elsif OS.linux?
      kernel = "linux"
      sha256 "e5134eea82f8e066d44451d4e71473f23ebf5d3a3c2187b5faed5cab46be9279"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.9.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
