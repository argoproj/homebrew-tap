# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.4.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "f2a27bac1faa12eb0f1f4542cd8e156ffad34de3823fd98237c43524da36641e"
    elsif OS.linux?
      kernel = "linux"
      sha256 "5d061a6195eaadbee403f0bf5aea3a0951773219656190b426827e535c178993"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.4.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
