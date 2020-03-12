# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.6.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "12ebccc0c2f1316e9270b11ceff5f59609934e6f4bd4e59d881bd44bbcd9b806"
    elsif OS.linux?
      kernel = "linux"
      sha256 "9867dd272d376ffae26d80b98710b69c71d858d60ec391760fa5faa08954ebe4"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.6.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
