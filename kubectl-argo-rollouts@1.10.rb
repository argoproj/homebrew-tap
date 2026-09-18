# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT110 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.10.0"

    if OS.mac? && Hardware::CPU.arm?
      kernel = "darwin"
      arch = "arm64"
      sha256 "0046896141a09e15913d0c4c2651516fb46b233f5595a5d2e462fa9a0d9d1e69"
    elsif OS.mac? && Hardware::CPU.intel?
      kernel = "darwin"
      arch = "amd64"
      sha256 "1a41cdf72c45eb0bbe6fc6fcaa9529b8372044be33f1cea827487ad8d0bad395"
    elsif OS.linux? && Hardware::CPU.arm?
      kernel = "linux"
      arch = "arm64"
      sha256 "2d73e61091084769d16191f21fc686b9c2054892eb93d59046660e8c876a6865"
    elsif OS.linux? && Hardware::CPU.intel?
      kernel = "linux"
      arch = "amd64"
      sha256 "57a464e80c3e716076c9760e1d15ff06b853e3bcab3e22e30f4dba8a3e9f29b2"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.10.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
