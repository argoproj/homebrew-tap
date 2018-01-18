# To update and test formula, update sha256 from the ouptut of:
# shasum -a 256 ./path/to/argo
# Then run:
# brew install --build-from-source ./argo.rb
class Argo < Formula
  desc "Get stuff done with container-native workflows for Kubernetes."
  homepage "https://argoproj.io"
  url "https://github.com/argoproj/argo/releases/download/v2.0.0-beta1/argo-darwin-amd64"
  sha256 "c51a7f37aeb89f6a8752a50036452affdb4618a40c3b26b4eb84f629f8f38c16"
  version "2.0.0-beta1"

  bottle :unneeded

  def install
    bin.install "argo-darwin-amd64"
    mv bin/"argo-darwin-amd64", bin/"argo"
  end
end
