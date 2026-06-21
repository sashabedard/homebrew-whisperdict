cask "whisperdict" do
  version "0.2.5"
  sha256 "fd7f908bb9ba8fed6fcb163d447c9b521e8f0082d8bf56e3b96fdc8c1c8bb835"

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
  EOS
end
