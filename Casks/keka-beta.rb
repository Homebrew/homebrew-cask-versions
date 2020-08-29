cask "keka-beta" do
  version "1.2.0-beta.3"
  sha256 "65fcd1640a879666d1332e282af28f9c6bee375ac40422bc80bb8f6ee33e70ad"

  # github.com/aonez/Keka/ was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://beta.keka.io"
  name "Keka"
  homepage "https://www.keka.io/#beta"

  auto_updates true
  conflicts_with cask: "keka"

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
