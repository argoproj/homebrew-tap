# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "f21d0991a66e67431d76324dd5b10bdcbcaeeac0b5eec235b20d2aa3d9fd9a02"
    elsif OS.linux?
      kernel = "linux"
      sha256 "5c2ee3b11bbc6ebd7f65d704ec5537a8323dc78154a283079ace2b9f15ff6271"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
