# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT16 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.6.0"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "2481a79a979b79797c3fc25341a7dd6dd0604564cc6c3ad10b8d7a4ea0f63518"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "915bc4951741e7ac0760448a48590f455ff5cc4a2ae0fd5834ded74080bc4402"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "ef52aa55b23b93d847f8960f23a10cd585dab07d273d72e4913b81dcb1d565bb"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "690cff6930282d5898ee3b13e2f446b1cf7d3a1eafbb840be9185c599ab22d73"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.6.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
