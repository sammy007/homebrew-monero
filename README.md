# homebrew-monero

Homebrew tap for Monero.

### Getting Homebrew

Follow instructions on https://brew.sh.

### Add monero `keg`

Enter in your terminal:

```
brew tap monero-project/monero
```

NOTE: As of now, there is a monero formula in a brew core. To prioritize this tap, run `brew tap-pin sammy007/monero` before installation.

### Install latest stable release

```
brew install -v monero
```

### Install from git `master` branch

```
brew install --HEAD -v monero
```

In order to update Monero to the latest version use:

```
brew update && brew upgrade monero
```

and

```
brew reinstall monero
```
