# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.9.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "39d7c1ddb05ce3386d4e5a0299c707cccbc575dbd12ea63b9a6c53eb1662ac88"
    elsif OS.linux?
      kernel = "linux"
      sha256 "c05814cfc4b014e5e6986873c077e3a7205f129961bf8ef3763b1c0c5abed72d"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.9.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
