# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.9.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "de2f2461f1ca7e90c538cd8457e791281c5f486169913e6209440000bc0614f0"
    elsif OS.linux?
      kernel = "linux"
      sha256 "77417b282020b7cfb53a1b2da37c55912bbb63a53c4b3ac784813a3814cc27d0"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.9.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
