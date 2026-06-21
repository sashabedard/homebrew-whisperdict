cask "whisperdict" do
  version "0.2.2"
  sha256 "b8ce3409aa93d21d67b5e8c5154c451381bbb1d95a961daebdbd939d561ac51c"

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
    (Homebrew removes the quarantine flag, so there's no "Open Anyway" prompt.)
  EOS
end
