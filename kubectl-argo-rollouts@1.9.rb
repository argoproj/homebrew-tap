# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT19 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.9.0"

    if OS.mac?
      kernel = "darwin"
      sha256 "76b557ca363d5c5ac5d9bffff35e93e9bca5106537aef1cf7a927d67ff8b86fe"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d1c98f59f6d3716b7a35aa540506764700a358448dd6a10e92381b7aa294d00b"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.9.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
