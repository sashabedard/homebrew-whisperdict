# WhisperDict — Homebrew tap

Install [WhisperDict](https://github.com/sashabedard/WhisperDict) (on-device push-to-talk dictation for macOS) with one command:

```bash
brew install --cask sashabedard/whisperdict/whisperdict
```

…or tap first, then install:

```bash
brew tap sashabedard/whisperdict
brew install --cask whisperdict
```

Homebrew removes the quarantine flag on install, so the app launches without the macOS "Open Anyway" prompt — no notarization needed. On first run, grant **Microphone** and **Accessibility** permissions.

Upgrade and uninstall the usual way:

```bash
brew upgrade --cask whisperdict
brew uninstall --cask whisperdict          # add --zap to also remove preferences
```

Requires macOS 13 (Ventura)+, Apple Silicon recommended.
