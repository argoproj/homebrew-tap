# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.8.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "6f8ff5d9b1a43ba18058bb636ba5a78f21ac3ebccf5682a125840223dfb89726"
    elsif OS.linux?
      kernel = "linux"
      sha256 "6900811f502eeccd7bc407cd06a0f92164e65c3072fe3d17af450271899e8060"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.8.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
