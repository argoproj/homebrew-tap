# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.3.0-rc2"

    if OS.mac?
      kernel = "darwin"
      sha256 "39c0e3d6c8e4770f5f26f89dc1b915c33deb26012de7d1164ff08d8590fe83b4"
    elsif OS.linux?
      kernel = "linux"
      sha256 "832036e4f239165c54f5a821c9de720621ce68c618605669c07b9a5a8b96be71"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.3.0-rc2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
