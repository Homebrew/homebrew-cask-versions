cask "protonvpn-dev" do
  version "2.0.0,2104260734"
  sha256 :no_check

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version.before_comma}.dmg"
  name "ProtonVPN"
  desc "VPN client focusing on security"
  homepage "https://protonvpn.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  conflicts_with cask: "protonvpn"
  depends_on macos: ">= :sierra"

  app "ProtonVPN.app"

  uninstall launchctl: "ch.protonvpn.ProtonVPNStarter",
            quit:      "ch.protonvpn.mac"

  zap trash: [
    "~/Library/Application Scripts/ch.protonvpn.ProtonVPNStarter",
    "~/Library/Application Scripts/ch.protonvpn.mac",
    "~/Library/Application Support/CrashReporter/ProtonVPN*",
    "~/Library/Application Support/ProtonVPN",
    "~/Library/Caches/SentryCrash/ProtonVPN",
    "~/Library/Caches/ch.protonvpn.mac",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/ch.protonvpn.mac",
    "~/Library/Containers/ch.protonvpn.*",
    "~/Library/Cookies/ch.protonvpn.mac.binarycookies",
    "~/Library/Logs/ProtonVPN.log",
    "~/Library/Preferences/ch.protonvpn.mac.plist",
    "~/Library/WebKit/ch.protonvpn.mac",
  ]
end
