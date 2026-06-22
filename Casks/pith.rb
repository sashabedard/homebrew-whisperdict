cask "pith" do
  version "1.0.1"
  sha256 "88d3ab635394a53ba11e496eb60e87762af8bca9b346f93ba7a2e0af1d27ce80"

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
