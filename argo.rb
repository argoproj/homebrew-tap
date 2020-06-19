# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.8.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "6385a7f4b31a03564add64caf8f588729ceed88513838bbe8039acde5e6bcc89"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d5673786e06639d700493ad369b4cd2a8a6cb2eef5f0c3487cc2802b0fe0991b"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.8.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
