# Homebrew Tap for argoproj binaries

NOTE: Both argo and argocd have moved to homebrew-core. This repo now only contains kubectl-argo-rollouts, which may move in the future.

## Install
```bash
brew install argoproj/tap/kubectl-argo-rollouts
```

## Uninstall
```bash
brew uninstall kubectl-argo-rollouts
```

## Updating a tap
To update and test formula, run ./update.sh <binary-name>. e.g.:
```bash
./update.sh kubectl-argo-rollouts v0.9.2
```

Then verify the tap works by running:
```bash
brew [install|upgrade] --build-from-source ./<tapname>.rb
```
