# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.10.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "e47b2855c19684b1648d54ff97dd423177a9f56a6e520d83d043578dff0458a8"
    elsif OS.linux?
      kernel = "linux"
      sha256 "55bc22886197398665f2501fba48a5810a96454d112264df31fe2e77fb7fb006"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.10.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
