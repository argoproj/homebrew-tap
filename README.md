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
To update and test formula, update the `sha256` field in the corresponding `.rb` files from the ouptut of:
```
shasum -a 256 ./path/to/binary
```
Then verify the tap works by running:
```
brew install --build-from-source ./<tapname>.rb
```
