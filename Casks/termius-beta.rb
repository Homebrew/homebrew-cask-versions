cask "termius-beta" do
  version "6.3.0"
  sha256 "998c7d18cb920df9eba25de8e19e99ec5178629937f0e042d1cf5f73f46d30ef"

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
