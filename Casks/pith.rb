cask "pith" do
  version "1.0.2"
  sha256 "194259349f14a6137ff2ddca74c2d3e9d0b04612bb89bfd4c71bbe245ca9a18d"

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
