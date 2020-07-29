cask "adguard-nightly" do
  version :latest
  sha256 :no_check

  url "https://static.adguard.com/mac/nightly/AdGuard.dmg"
  name "Adguard"
  homepage "https://adguard.com/"

  pkg "AdGuard.pkg"

  uninstall pkgutil: "com.adguard.mac.adguard-pkg"

  zap trash: [
    "/Library/Application Support/com.adguard.mac.adguard",
    "~/Library/Application Support/com.adguard.mac.adguard-loginhelper",
    "~/Library/Application Support/com.adguard.mac.adguard",
    "~/Library/Caches/KSCrash/Adguard",
    "~/Library/Caches/com.adguard.mac.adguard",
    "~/Library/Cookies/com.adguard.Adguard.binarycookies",
    "~/Library/Containers/com.adguard.mac.adguard-loginhelper",
    "~/Library/Logs/com.adguard.mac.adguard",
    "~/Library/Preferences/com.adguard.mac.adguard.plist",
    "~/Library/Saved Application State/com.adguard.mac.adguard.savedState",
  ]
end
