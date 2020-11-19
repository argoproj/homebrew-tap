# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.10.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "c93dc62836d7e4bbe98a466dd5889fb4a5cf41c010c2dcd29eb23913430e1377"
    elsif OS.linux?
      kernel = "linux"
      sha256 "5c2e110bbce23b339802a7ccd79d286556bf08b01ec67d02ba4df891171ba4bd"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.10.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
