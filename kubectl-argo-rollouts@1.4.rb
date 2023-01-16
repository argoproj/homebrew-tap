# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT14 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.4.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "54533eb67a6d355f7c3b2c2a9df99c16062da9ea7cc201c1a464dc44ec3175ad"
    elsif OS.linux?
      kernel = "linux"
      sha256 "2096ab5283a31a6a984ce59b996ea6d98c8246fe91dcda7ebf420632a5501dce"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.4.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
