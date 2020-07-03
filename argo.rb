# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.9.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "b84ed85f1a0d51d12fc9ca22c06d228136900a089b4306ca75ac57b1f56f9efd"
    elsif OS.linux?
      kernel = "linux"
      sha256 "f56d02605840be88e45ce38466c663f82049db571854f9dfaea103d843f6e400"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.9.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
