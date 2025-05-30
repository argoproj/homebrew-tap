# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRollouts < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.8.1"
    revision 1

    if OS.mac?
      kernel = "darwin"
      sha256 "e1e2dec9b3c7c334c937b7450a4d3e8321aab6a217031c504fb78338c25a3618"
    elsif OS.linux?
      kernel = "linux"
      sha256 "d2681d3c22d0c143481924d1332d07ced7f0828b89a85e28b9be598ae25950b7"
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-amd64"
    url baseurl + "/v1.8.1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
      kubectl_plugin_completion = <<~EOS
        #!/usr/bin/env sh
        # Call the __complete command passing it all arguments
        kubectl argo rollouts __complete "$@"
      EOS

      (bin/"kubectl_complete-argo-rollouts").write(kubectl_plugin_completion)
      chmod 0755, bin/"kubectl_complete-argo-rollouts"
    end
end
