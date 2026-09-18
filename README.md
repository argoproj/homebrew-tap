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
To update and test formula, run ./update.sh <binary-name> <brew-version>. e.g.:

To update main non versions formula
```bash
./update.sh kubectl-argo-rollouts v1.0.0
```

To update a versioned formula for rollouts version 1.3
```bash
./update.sh kubectl-argo-rollouts v1.3.0 @1.3
```

Then verify the tap works by running:
```bash
brew tap argoproj/local "$(pwd)"
brew install --build-from-source argoproj/local/kubectl-argo-rollouts
```

If the formula is already installed, use `reinstall` instead of `install`.
Remove the temporary tap after testing with `brew untap argoproj/local`.
