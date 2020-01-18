# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.4.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "091e3ecd18e5f3ec1928c1957f89bd56d2ff0b633cffafa8e4abcd78adcf469b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "77d04a181f57514d0331c64b511406f3228111b01c6cc914fe659d432e9de751"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.4.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
