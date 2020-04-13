# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v0.7.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "18adfd074d0c7516a8fe529de2b3f4acb9eda03758a004d4928194c71042c21b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "32da053f97e3bd220bea6f1a6701a2e1345b2328b83b7ab356645126bc93ecb7"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v0.7.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
