# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.9.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "9d6f3cade577e440a79f9852788aa2c188c5411f883953f379035d33926008ed"
    elsif OS.linux?
      kernel = "linux"
      sha256 "b51e22134c624cb075bfe123dcdd5563bbad18e4e8d69160af10eee88ce9abf7"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.9.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
