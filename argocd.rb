# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.4.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "36445fa55871dc1a8e5d8d8de24b8fcefc62ddf94d75c9cd91f441606b1d5065"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0d670ed9435eb5ba232682e768c4e1477029a904dc06c22a477bde149a9de075"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.4.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
