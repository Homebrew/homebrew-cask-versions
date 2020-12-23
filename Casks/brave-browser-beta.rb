cask "brave-browser-beta" do
  version "87.1.19.65,119.65"
  sha256 "ebdc87005d01fee8ca85b4a6235b74b9af6d0799c708a5c5612e1dbf09804ba4"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
