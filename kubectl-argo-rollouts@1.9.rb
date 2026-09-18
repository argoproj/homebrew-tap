# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT19 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.9.0"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "e822127ff7a783739c23b0f9e3005910f4cb7cf5b52a281cbf41c409fa3c9e80"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "76b557ca363d5c5ac5d9bffff35e93e9bca5106537aef1cf7a927d67ff8b86fe"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "90907a84406b3843fb9deecd12a7312f61a9269e6d5729a30ca72a26bf67f2ab"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "d1c98f59f6d3716b7a35aa540506764700a358448dd6a10e92381b7aa294d00b"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.9.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
