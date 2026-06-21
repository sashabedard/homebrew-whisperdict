# WhisperDict — Homebrew tap

Install [WhisperDict](https://github.com/sashabedard/WhisperDict) (on-device push-to-talk dictation for macOS):

```bash
brew tap sashabedard/whisperdict
brew install --cask --no-quarantine whisperdict
```

The first install from a community tap, Homebrew asks you to confirm you trust it — that's expected. If it refuses, run `brew tap --force-auto-update` or:

```bash
brew install --cask --no-quarantine sashabedard/whisperdict/whisperdict
```

WhisperDict is ad-hoc signed (not yet notarized), so the **`--no-quarantine`** flag matters: it tells Homebrew not to quarantine the app, which is what lets it launch without the macOS "could not verify … is free of malware" prompt. If you install **without** that flag, you'll hit Gatekeeper — recover with:

```bash
xattr -dr com.apple.quarantine /Applications/WhisperDict.app
```

(or System Settings → Privacy & Security → **Open Anyway**). On first run, grant **Microphone** and **Accessibility** permissions.

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
