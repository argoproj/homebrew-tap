# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.10.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "968457d97ce44008b4220a7f4fd2651fa6d73bd084b205bc38788d460a9d3bc5"
    elsif OS.linux?
      kernel = "linux"
      sha256 "f98f195faa4170810aa83306a005707f3ad697c06d222441c3d8b5d2eb109495"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.10.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
