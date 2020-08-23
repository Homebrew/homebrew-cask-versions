cask "termius-beta" do
  version "6.4.1"
  sha256 "32a8b4a9ecd0f8f5188ddf18f5837719410749476fc84356978bf4a1b1506252"

  url "https://www.termius.com/beta/download/mac/Termius+Beta.dmg"
  name "Termius Beta"
  homepage "https://www.termius.com/beta-program"

  app "Termius Beta.app"

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/Termius Beta",
    "~/Library/Saved Application State/com.termius-beta.mac.savedState",
    "/Library/Preferences/com.termius-beta.mac.helper.plist",
    "/Library/Preferences/com.termius-beta.mac.plist",
    "~/Library/Logs/Termius Beta",
  ]
end
