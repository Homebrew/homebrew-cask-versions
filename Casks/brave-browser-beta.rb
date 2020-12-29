cask "brave-browser-beta" do
  version "87.1.19.70,119.70"
  sha256 "698bf0fbd0424217e067dd39a50daf72bfe4fee346cf68ce0162171f8fc55e64"

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
