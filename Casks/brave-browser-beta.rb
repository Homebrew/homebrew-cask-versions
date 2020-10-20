cask "brave-browser-beta" do
  version "86.1.16.65,116.65"
  sha256 "e89f7130ba736a94ac34e8995e55c3d5a534f4b5c123c224e83f0486684af12a"

  # updates-cdn.bravesoftware.com/sparkle/Brave-Browser/ was verified as official when first introduced to the cask
  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta.dmg"
  appcast "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
  name "Brave Beta"
  homepage "https://brave.com/download-beta/"

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
