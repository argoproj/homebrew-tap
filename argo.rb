class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo/releases/download/v2.3.0/argo-darwin-amd64"
    sha256 "f74402daa95168bbb9f6c62117a28b8260da5e2357d71681d9f5b458fb497542"
    version "2.3.0"

    bottle :unneeded

    def install
        bin.install "argo-darwin-amd64"
        mv bin/"argo-darwin-amd64", bin/"argo"
    end
end
