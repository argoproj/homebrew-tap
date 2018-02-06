# To update and test formula, update sha256 from the ouptut of:
# shasum -a 256 ./path/to/argo
# Then run:
# brew install --build-from-source ./argo.rb
class Argo < Formula
  desc "Get stuff done with container-native workflows for Kubernetes."
  homepage "https://argoproj.io"
  url "https://github.com/argoproj/argo/releases/download/v2.0.0/argo-darwin-amd64"
  sha256 "7f74b0972f780446898e5567ecd3312bc41e969ab9d0adcdde2909ed9cdfbb91"
  version "2.0.0"

  bottle :unneeded

  def install
    bin.install "argo-darwin-amd64"
    mv bin/"argo-darwin-amd64", bin/"argo"
  end
end
