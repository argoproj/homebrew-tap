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
docker run -v $PWD:/mnt --rm --entrypoint cp argoproj/argocd:v0.11.0-rc4 /usr/local/bin/argocd-darwin-amd64 /mnt
./update.sh ./argocd-darwin-amd64
```
Then verify the tap works by running:
```
brew [install|upgrade] --build-from-source ./<tapname>.rb
```
