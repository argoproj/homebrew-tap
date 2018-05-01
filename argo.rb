# To update and test formula, update sha256 from the ouptut of:
# shasum -a 256 ./path/to/argo
# Then run:
# brew install --build-from-source ./argo.rb
class Argo < Formula
  desc "Get stuff done with container-native workflows for Kubernetes."
  homepage "https://argoproj.io"
  url "https://github.com/argoproj/argo/releases/download/v2.1.0/argo-darwin-amd64"
  sha256 "3788ee0bdbc0fc61a4d2a0153fe1eed7d3aff48221174b47634d1602604151e3"
  version "2.1.0"

  bottle :unneeded

  def install
    bin.install "argo-darwin-amd64"
    mv bin/"argo-darwin-amd64", bin/"argo"
  end
end
