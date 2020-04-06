# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.5.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "67e0ae992e4e483b060bdf4d72257560686aa12487b69c5cdcf32b10f427c841"
    elsif OS.linux?
      kernel = "linux"
      sha256 "e485fdc8f40596d6c6bb2622444f4fc0595ae448b70db29cd10455e08dcc5f52"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.5.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
