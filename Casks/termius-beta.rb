cask "termius-beta" do
  version "7.2.1"
  sha256 :no_check

  url "https://www.termius.com/beta/download/mac/Termius+Beta.dmg"
  name "Termius Beta"
  desc "Cross-platform SSH client"
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
