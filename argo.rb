# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.7.6"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "0979a9488d86ed540740970e295c685a9460d306780fd416ba85f36e6f2d1e45"
    elsif OS.linux?
      kernel = "linux"
      sha256 "1118bbb24c2570d47fb0f3bdb0e3660c428981b6a74c8f62beec99feb52b551b"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.7.6/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
