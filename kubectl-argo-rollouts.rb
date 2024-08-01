# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.7.1"

    if OS.mac?
      kernel = "darwin"
      sha256 "173f56252e6d08fe564638a0e28360994430e4ca444713bd5ccfe6392d4a02fa"
    elsif OS.linux?
      kernel = "linux"
      sha256 "b42859a4ead2b02dc1a53a101490f60adc9915b602e033ddc49e78e74a20895b"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.7.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
