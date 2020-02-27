# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.5.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "59115563b3de7582e9684902532e8b9021ee270723884837022ef43a654c0573"
    elsif OS.linux?
      kernel = "linux"
      sha256 "5a912a333e686403cff3c6ed78ed7db5475b69a8680c578f07dc5072eadd1cd0"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.5.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
