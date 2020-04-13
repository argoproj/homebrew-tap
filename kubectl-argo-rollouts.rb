# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.6.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "85b7bc7b44fa1acae6e9bd45d02d780ad41511ab98d6a1c7d821b13da87ef8eb"
    elsif OS.linux?
      kernel = "linux"
      sha256 "1aa3c6ad10247a649f0718924a961eeed3bd0e757765c8e32358ef3c9a017aad"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.6.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
