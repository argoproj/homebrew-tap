# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.7.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "51ee54ca5cf3d6eb5366145725abdacfc85af0d02d59533d8b24abb5e4c75963"
    elsif OS.linux?
      kernel = "linux"
      sha256 "4e1579c3d615fe1d8e03397b182122826b5be18eb49b016d3770c8d55cdb6927"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.7.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
