# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.6.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "d470718c628313d1412ad79889159ee418457ee4f9c4a3e1bbcbafedac81a7a2"
    elsif OS.linux?
      kernel = "linux"
      sha256 "f194938795a888ca90e73072e53f4f10e26cfa5b149df5702b82237e5d4b89d7"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.6.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
