class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo/releases/download/v2.1.1/argo-darwin-amd64"
    sha256 "cbaf72cefdfc7a4d52d9e7242634af8a1170b140d78445e1c60c217ad9b71c08"
    version "2.1.1"

    bottle :unneeded

    def install
        bin.install "argo-darwin-amd64"
        mv bin/"argo-darwin-amd64", bin/"argo"
    end
end
