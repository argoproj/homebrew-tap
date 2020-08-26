# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.7.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "cdd88c3642b9b44ddba32c2539d1608bd510b7395673942c45604418bd088e95"
    elsif OS.linux?
      kernel = "linux"
      sha256 "55a6277fc90a72f76d362e1dddb997ad442abdf5c0a7d7db4705e55b556f2a7f"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.7.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
