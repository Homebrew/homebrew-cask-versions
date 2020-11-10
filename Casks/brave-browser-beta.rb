cask "brave-browser-beta" do
  version "87.1.17.64,117.64"
  sha256 "a797b40a86f81c79c166e7346726604abc885bc1d1db6636ad33a68430a1fe3a"

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
