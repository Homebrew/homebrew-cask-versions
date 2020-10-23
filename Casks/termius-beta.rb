cask "termius-beta" do
  version "7.0.1"
  sha256 "67d1800050c50180c6ba29481b7005b3f71ec1da3b12aa370e675ce3a4553350"

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
