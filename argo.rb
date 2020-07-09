# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.9.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "7712d914b69220c5b0e1635bc8d7565fad6a74ad1a6989d7bb73cef69c42b6da"
    elsif OS.linux?
      kernel = "linux"
      sha256 "88a95a00741455e22970517d9b6ca714307189814c74424408b956cdd36d8450"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.9.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
