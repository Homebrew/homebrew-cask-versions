cask "brave-browser-arm" do
  version :latest
  sha256 :no_check

  # updates.bravesoftware.com/ was verified as official when first introduced to the cask
  url do
    require "open-uri"
    appcast = "https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly-arm64/appcast.xml"
    URI(appcast).read[/enclosure url="([^"]+.dmg)"/, 1]
  end
  name "Brave Nightly ARM"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  app "Brave Browser Nightly ARM.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
