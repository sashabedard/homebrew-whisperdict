cask "whisperdict" do
  version "0.2.4"
  sha256 "3ed1eef81928a2358ac0d2f63e20e22041c54b2284440f5ebf03523e1b83dcf9"

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

    This app is ad-hoc signed (not yet notarized), so macOS blocks the first
    launch with "could not verify … is free of malware". Clear it with:
        xattr -dr com.apple.quarantine /Applications/WhisperDict.app
    (or System Settings → Privacy & Security → Open Anyway). Re-run after upgrades.
  EOS
end
