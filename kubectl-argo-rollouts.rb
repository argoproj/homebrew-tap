# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.6.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "21568ab04a953599ad2965cc50c0ba972d4c13285f9b40550cd31011f836ffe2"
    elsif OS.linux?
      kernel = "linux"
      sha256 "5700a35a9fb8b9cdb0e991c68eaf5f92bc3ddc4802d917f2ac570a8a06384db1"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.6.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
