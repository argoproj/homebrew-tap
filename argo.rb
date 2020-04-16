# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "bb66fbb07bb18f72f0f431bc0dde22255e3e6b7d72b0d0d089b197538779782b"
    elsif OS.linux?
      kernel = "linux"
      sha256 "42d87859a49acb301784fcce654e252fc15615a90e8ea9fde7707e80fe7dc568"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
