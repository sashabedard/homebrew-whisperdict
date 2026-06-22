cask "pith" do
  version "1.0.3"
  sha256 "189adb3db154da9179bab59acd240f980e4c54fca7476ff6498f5314b131fc14"

  url "https://github.com/sashabedard/Pith/releases/download/v#{version}/Pith-#{version}.dmg"
  name "Pith"
  desc "On-device push-to-talk voice dictation for the menu bar"
  homepage "https://github.com/sashabedard/Pith"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Pith.app"

  zap trash: [
    "~/Library/Preferences/com.sasha.pith.plist",
    "~/Library/Saved Application State/com.sasha.pith.savedState",
  ]

  caveats <<~EOS
    Pith needs Accessibility permission to paste into other apps —
    grant it in System Settings → Privacy & Security → Accessibility on first use.
  EOS
end
