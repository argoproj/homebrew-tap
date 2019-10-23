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
./update.sh argo v2.4.2
./update.sh argocd v1.2.4
```

Then verify the tap works by running:
```
brew [install|upgrade] --build-from-source ./<tapname>.rb
```
