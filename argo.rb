# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.7"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "14d5c89014f78fe88c5ac901256add7d99644fa73b0a85013a9787cacfeeea46"
    elsif OS.linux?
      kernel = "linux"
      sha256 "81719562d9f673d03c01adafd1dbb08ae1667bdd246ea417419700ad473e38c5"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.7/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
