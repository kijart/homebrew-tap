# kijart/homebrew-tap

[Homebrew](https://brew.sh) casks for apps by [@kijart](https://github.com/kijart).

| Cask               | App                                                                                                                                       |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `network-menu-bar` | [Network Menu Bar](https://github.com/kijart/network-menu-bar): Ethernet, Wi‑Fi and VPN status and every IP address in the macOS menu bar |

## Install

```sh
brew install --cask kijart/tap/network-menu-bar
```

Installing by the full name taps this repository and [trusts](https://docs.brew.sh/Tap-Trust) only that cask, not the whole tap.

## Upgrade and uninstall

```sh
brew upgrade --cask network-menu-bar
brew uninstall --cask network-menu-bar
brew uninstall --cask --zap network-menu-bar   # also removes its preferences
```

## Unsigned apps

These apps are ad‑hoc signed and not notarized by Apple. Each cask removes the quarantine flag from the app it installs, so Gatekeeper does not block the first launch.

## Updates

Casks are bumped automatically when a new release is published in the app's repository.
