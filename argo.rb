class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo/releases/download/v2.2.0/argo-darwin-amd64"
    sha256 "7984c9e10ea945df7703f0dd7513f684f9488d84e9b6b0cfb2adc1659e000da3"
    version "2.2.0"

    bottle :unneeded

    def install
        bin.install "argo-darwin-amd64"
        mv bin/"argo-darwin-amd64", bin/"argo"
    end
end
