# WhisperDict — Homebrew tap

> 📦 **Main project & source:** **[github.com/sashabedard/WhisperDict](https://github.com/sashabedard/WhisperDict)** — docs, releases, and issues live there. This repo is just the Homebrew cask.

Install [WhisperDict](https://github.com/sashabedard/WhisperDict) (on-device push-to-talk dictation for macOS):

```bash
brew tap sashabedard/whisperdict
brew install --cask whisperdict
xattr -dr com.apple.quarantine /Applications/WhisperDict.app
```

The first install from a community tap, Homebrew asks you to confirm you trust it — that's expected. If it refuses, run `brew tap --force-auto-update` or `brew install --cask sashabedard/whisperdict/whisperdict`.

WhisperDict is ad-hoc signed (not yet notarized), so macOS quarantines it and Gatekeeper blocks the first launch with "could not verify … is free of malware". The **`xattr` line clears the quarantine** and is the one reliable fix — Homebrew's old `--no-quarantine` flag was removed in recent versions, so don't rely on it. (Alternative: System Settings → Privacy & Security → **Open Anyway**.) Re-run the `xattr` line after a `brew upgrade`. On first run, grant **Microphone** and **Accessibility** permissions.

## Updating

If you installed with Homebrew, **update with Homebrew** — not the in-app updater:

```bash
brew upgrade --cask whisperdict
```

(The app detects a Homebrew install and points you here instead of downloading a `.dmg`, so the two never fight over versions.)

## Uninstall

```bash
brew uninstall --cask whisperdict          # add --zap to also remove preferences
```

Requires macOS 13 (Ventura)+, Apple Silicon recommended.
