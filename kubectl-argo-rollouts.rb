# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.3.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "e8e27139d990511782a925990be31ac4bc9cab1e6519ba76fc9dabad07b15980"
    elsif OS.linux?
      kernel = "linux"
      sha256 "314de22f1871f0c435912daeb7b279011bd890b2ceae43f9b6a588302afd7980"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.3.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
