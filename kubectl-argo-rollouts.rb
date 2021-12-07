# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.1.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "108d513465889a65eea92a3e612c4bebbd2d776582e2f53b0bad5572af0f5f61"
    elsif OS.linux?
      kernel = "linux"
      sha256 "878cba3423718d4973407e257e5d0325430099ea2a8bdf370467f89bb751b8f1"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/" + version + "/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
