# Pith — Homebrew tap

> 📦 **Main project & source:** **[github.com/sashabedard/Pith](https://github.com/sashabedard/Pith)** — docs, releases, and issues live there. This repo is just the Homebrew cask.

Install [Pith](https://github.com/sashabedard/Pith) (on-device push-to-talk dictation for macOS):

```bash
brew tap sashabedard/pith
brew install --cask pith
```

The first install from a community tap, Homebrew asks you to confirm you trust it — that's expected. If it refuses, run `brew tap --force-auto-update` or `brew install --cask sashabedard/pith/pith`.

Pith is signed with a Developer ID and **notarized by Apple**, so it launches with no Gatekeeper warning — no extra steps. On first run, grant **Microphone** and **Accessibility** permissions.

## Updating

If you installed with Homebrew, **update with Homebrew** — not the in-app updater:

```bash
brew upgrade --cask pith
```

(The app detects a Homebrew install and points you here instead of downloading a `.dmg`, so the two never fight over versions.)

## Uninstall

```bash
brew uninstall --cask pith          # add --zap to also remove preferences
```

Requires macOS 13 (Ventura)+, Apple Silicon recommended.

> Formerly **WhisperDict** — the old `sashabedard/whisperdict` tap redirects here.
