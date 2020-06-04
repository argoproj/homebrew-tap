# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.8.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "2d9a20f3ffd270f06dce71358f2a50482b50893213060509469177f6272e41a7"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0181fcdadee043755196dc03580d1b42ca99c022b472b329a1aa876f4a904f4d"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.8.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
