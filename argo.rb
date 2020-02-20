# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.5.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "5e9fbb08e3abf30e578be01080f5e8c00f6df8198ddf54aff0969017723ac00c"
    elsif OS.linux?
      kernel = "linux"
      sha256 "9a6da2b5be54718c69220bb9ff7e8a31b32d672b53f30350d29b9b5c3ea286fb"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.5.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
