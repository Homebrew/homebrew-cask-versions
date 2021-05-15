cask "termius-beta" do
  version "7.11.1"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://www.termius.com/beta/download/mac/Termius+Beta.dmg"
  else
    url "https://www.termius.com/beta/download/mac-arm64/Termius+Beta.dmg"
  end

  name "Termius Beta"
  desc "Cross-platform SSH client"
  homepage "https://www.termius.com/beta-program"

  livecheck do
    url "https://autoupdate.termius.com/mac-beta/latest-mac.yml"
    strategy :electron_builder
  end

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
