cask "whisperdict" do
  version "0.2.3"
  sha256 "e331eb8498659f5d278ceb4bfa2f8c32db70322f55185e4fcc7178aec94d908b"

  url "https://github.com/sashabedard/WhisperDict/releases/download/v#{version}/WhisperDict-#{version}.dmg"
  name "WhisperDict"
  desc "On-device push-to-talk voice dictation for the menu bar"
  homepage "https://github.com/sashabedard/WhisperDict"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "WhisperDict.app"

  zap trash: [
    "~/Library/Preferences/com.sasha.whisperdict.plist",
    "~/Library/Saved Application State/com.sasha.whisperdict.savedState",
  ]

  caveats <<~EOS
    WhisperDict needs Accessibility permission to paste into other apps —
    grant it in System Settings → Privacy & Security → Accessibility on first use.

    This app is ad-hoc signed (not yet notarized). If macOS blocks it with
    "could not verify … is free of malware", run:
        xattr -dr com.apple.quarantine /Applications/WhisperDict.app
    or install with `--no-quarantine` to avoid the prompt entirely.
  EOS
end
