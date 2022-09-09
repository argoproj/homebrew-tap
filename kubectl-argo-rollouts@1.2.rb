# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT12 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.2.2"

    if OS.mac?
      kernel = "darwin"
      sha256 "a30b1b33829e2a4ee6ca0c4dd4d99f0dc654449d9714926fcb2e7b504aff37e0"
    elsif OS.linux?
      kernel = "linux"
      sha256 "43ce6ab7105c3161690cd810c7a675994d0fb96527ee38fb76722393e61b29e1"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.2.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
