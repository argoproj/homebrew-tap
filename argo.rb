# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.8.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "15dd9013654ea2a786d7eafc6f05e51e994ec2e7e595d84c27113a5f69eee918"
    elsif OS.linux?
      kernel = "linux"
      sha256 "b6c3a4a16d329de09259a1b2c60fe1917f67e8915e58ce79a9e9d7120d505899"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.8.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
