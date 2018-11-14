# Homebrew Tap for argo

## Install
```
brew install argoproj/tap/argo
brew install argoproj/tap/argocd
```

## Uninstall
```
brew uninstall argo
brew uninstall argocd
```

## Updating a tap
To update and test formula, run ./update.sh <path/to/binary>. e.g.:
```
./update.sh ~/go/src/github.com/argoproj/argo-cd/dist/argocd-darwin-amd64
```
Then verify the tap works by running:
```
brew [install|upgrade] --build-from-source ./<tapname>.rb
```
