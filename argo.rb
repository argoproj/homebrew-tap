# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.6.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "ded856b6bfd76aaa7559bcd83be20e0952635307daaa15f8f8ff50ac5b594f05"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d6633e0b826afc437466ba5efa2abf3276ebe36c316544089993281d4c5421b9"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.6.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
