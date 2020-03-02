# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.6.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "4d1f358909c765c07200668d84e909b7f1446ed766b872aabb850832f0562c3a"
    elsif OS.linux?
      kernel = "linux"
      sha256 "184d60c200a341cd61513f4d49efc33608234ce51d0fc659e910020ecf0b9560"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.6.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
