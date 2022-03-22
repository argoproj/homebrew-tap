# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.2.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "d26d696bd8e80783c2309de0717fa9d2cf9b95e61f4df16783b5f7b254d8d69e"
    elsif OS.linux?
      kernel = "linux"
      sha256 "4cfe705f40296c635b1240bada4a9ae5213d67e16d7a2b658456a43ad986d479"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.2.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
