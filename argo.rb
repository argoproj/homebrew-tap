class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo/releases/download/v2.2.1/argo-darwin-amd64"
    sha256 "41239e4a4bb1d45ade51fe2f68ad9697f7368bab50abac8e5aca53e8a9564444"
    version "2.2.1"

    bottle :unneeded

    def install
        bin.install "argo-darwin-amd64"
        mv bin/"argo-darwin-amd64", bin/"argo"

        # Ensure argo is executable
        FileUtils.chmod("+x","#{bin}/argo")
        
        # Install bash completion
        output = Utils.popen_read("#{bin}/argo completion bash")
        (bash_completion/"argo").write output
        
        # Install zsh completion
        output = Utils.popen_read("#{bin}/argo completion zsh")
        (zsh_completion/"_argo").write output
    end
end
