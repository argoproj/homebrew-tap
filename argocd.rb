# This is an auto-generated file. DO NOT EDIT
class Argocd < Formula
    desc "GitOps Continuous Delivery for Kubernetes"
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-cd/releases/download"
    version "v1.4.2"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "671fd6859af9ae36fa62cd2a99b9437581b4d58102be5a355a68fd96a316b5a6"
    elsif OS.linux?
      kernel = "linux"
      sha256 "25016ff4b51aa12b360d70c7d2b91d24bf17202ac534e7e06184e94a575152dd"
    end

    @@bin_name = "argocd-" + kernel + "-amd64"
    url baseurl + "/v1.4.2/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argocd"
    end
end
