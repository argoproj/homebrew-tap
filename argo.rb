# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.1"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "b987aab3253fe39c7b775f95e750ebc06b3564ecb829cf2fef06562d7a0fd31e"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d871d4005105a47e81ab446047c05f4aa97738a62ecd972d56ee5e61f24de4ea"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
