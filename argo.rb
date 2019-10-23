class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    url "https://github.com/argoproj/argo/releases/download/v2.4.1/argo-darwin-amd64"
    sha256 "fceff61499b1c0d0609ba9b7b09506974a544ce1b9c6efaecc1372e425a9cb8e"
    version "2.4.1"

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
