# Homebrew Tap for argo

## Install
```bash
brew install argoproj/tap/argo
brew install argoproj/tap/argocd
brew install argoproj/tap/kubectl-argo-rollouts
```

## Uninstall
```bash
brew uninstall argo
brew uninstall argocd
brew uninstall kubectl-argo-rollouts
```

## Updating a tap
To update and test formula, run ./update.sh <binary-name>. e.g.:
```bash
./update.sh argo v2.4.2
./update.sh argocd v1.2.4
./update.sh kubectl-argo-rollouts v0.6.0
```

Then verify the tap works by running:
```bash
brew [install|upgrade] --build-from-source ./<tapname>.rb
```
