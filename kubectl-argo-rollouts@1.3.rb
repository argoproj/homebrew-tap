# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT13 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.3.2"

    if OS.mac?
      kernel = "darwin"
      arch = "amd64"
      sha256 "08f0b12d16122589cd0e3ef01fcd8d24daff4c90619e13fe6a7a714b25134070"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "4ed28833065c33018bc94f71307b3a885fc72e02afbc65b74f2954f9964e7f0c"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "016a7f4fb1aa3bec78fc149edf2e160e2f6b653dcadab48e851edd43a5e7a61e"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.3.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
