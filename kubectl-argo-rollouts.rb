# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.6.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "915bc4951741e7ac0760448a48590f455ff5cc4a2ae0fd5834ded74080bc4402"
    elsif OS.linux?
      kernel = "linux"
      sha256 "690cff6930282d5898ee3b13e2f446b1cf7d3a1eafbb840be9185c599ab22d73"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.6.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
