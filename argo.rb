# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.8.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "645448115e79b109bb4cff105dbaca2b41522a306ce6d41bc1a893ade5394dc7"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.8.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
