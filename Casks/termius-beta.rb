cask "termius-beta" do
  arch = Hardware::CPU.intel? ? "mac-beta" : "mac-beta-arm64"

  version "7.25.0"
  sha256 :no_check

  url "https://autoupdate.termius.com/#{arch}/Termius%20Beta.dmg"
  name "Termius Beta"
  desc "SSH client"
  homepage "https://www.termius.com/beta-program"

  livecheck do
    url "https://autoupdate.termius.com/mac-beta/latest-mac.yml"
    strategy :electron_builder
  end

  app "Termius Beta.app"

  zap trash: [
    "/Library/Preferences/com.termius-beta.mac.helper.plist",
    "/Library/Preferences/com.termius-beta.mac.plist",
    "~/.termius",
    "~/Library/Application Support/Termius Beta",
    "~/Library/Logs/Termius Beta",
    "~/Library/Saved Application State/com.termius-beta.mac.savedState",
  ]
end
