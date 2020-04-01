# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.0"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "1676fed8d1224732b5ddc29821f07512810a67c648bc50d5d4b2761f1bf5a356"
    elsif OS.linux?
      kernel = "linux"
      sha256 "e28bff15fe6e101b02167920bc2898206493e7e9e686d4b762a98cfe6b085b09"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
