# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT18 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.8.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "1bbdfeb40ad8e2f4d27b37725fe730860f88b723e33b155aac462172a0c93b15"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d27e53ad67f0a74a09229dbbbbd7e55c359891387d689c67a7b79f7e191d804f"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.8.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
