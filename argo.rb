class Argo < Formula
  desc "Get stuff done with container-native workflows for Kubernetes."
  homepage "https://argoproj.io"
  url "https://github.com/argoproj/argo/releases/download/v2.0.0-alpha3/argo-darwin-amd64"
  sha256 "45a9e840876c736e75f452b060f3bcfe78c69ee462f8c21c141d32da3844a9fd"
  version "2.0.0-alpha3"

  bottle :unneeded

  def install
    bin.install "argo-darwin-amd64"
    mv bin/"argo-darwin-amd64", bin/"argo"
  end
end
