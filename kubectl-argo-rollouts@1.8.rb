# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT18 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.8.3"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "961aec4e25bbd587479af0c25fe3e5c2509e451c1b9ec026fa5eb8d57c9c9fe7"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "78562a0f9ce18d2253216c0114a5fd90a597655dacf0bad2a6942c2c9e5a5109"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "dabe066c926d1bb816a3ba404e5f9221e97df54100f7619cddf073275ef5bd4e"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "6f60f3608ffc1e6b59c05ffc979d80ad1acd886d7fcbffb1e8e0c50291674373"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.8.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
