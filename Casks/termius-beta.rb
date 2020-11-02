cask "termius-beta" do
  version "7.1.0"
  sha256 "33b26b61bdd6619639297d2edb5dea24a17727e42be93cbb25175a673615d836"

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
