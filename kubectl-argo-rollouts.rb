# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.9.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "87ddb93a5c4c3d24d11672945916b0a35a0911ca48e64792625c258807f75eef"
    elsif OS.linux?
      kernel = "linux"
      sha256 "522b83bb48ea0cda56c06f003f4a6f2d2829568c0c75dad4378ec0e81e38943a"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.9.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
