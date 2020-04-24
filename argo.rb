# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.5"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "2f08d453c450ab41889258163a266138652277f508fbf452cd1468a4d39ec12d"
    elsif OS.linux?
      kernel = "linux"
      sha256 "fe169e993a14738ec7bc3c5d00fb33b1d4b5503f86d0e9c4994488ec5e2f54f7"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.5/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
