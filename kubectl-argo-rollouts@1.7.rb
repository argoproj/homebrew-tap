# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT17 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.7.0-rc1"

    if OS.mac?
      kernel = "darwin"
      sha256 "637d9fcda4fc8380b908278ed691b7c52b767bb6a966b0869fbc4c38e722be36"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0a329c8540b79b01dc58d2533e8a6f2130107ecb97cd04c0eff8527689c60e58"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.7.0-rc1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
