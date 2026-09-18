# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT17 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.7.2"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "264eaf8360ea005aaaec485ee351214b02a2be87a5e5083419ae93a327ac0b30"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "cd5c9f39150189c844f7f4b37c149d77e8235edd5d3b48abbf681fc915226d34"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "15d5b4dae3995c42e53c3297038ee4fa58716ea516a771f4d5eac60b219a33a9"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "af7eac6593bbcac4e219960995e78f6a4b3bb1e6aa47e15a495beb1a4d2da177"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.7.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
