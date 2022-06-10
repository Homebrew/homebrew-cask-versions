cask "mullvadvpn-beta" do
  version "2022.2-beta2"
  sha256 "a035b36df1ada1afcca9c392c7213b1da6a476b0fd13b89bbf8399533cab815e"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://github.com/mullvad/mullvadvpn-app/releases"
    strategy :page_match
    regex(/MullvadVPN-(\d+(?:\.\d+)*.+-beta\d+).pkg/i)
  end

  conflicts_with cask: "mullvadvpn"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   "net.mullvad.vpn",
            quit:      "net.mullvad.vpn",
            launchctl: "net.mullvad.daemon"

  zap trash: [
    "~/Library/Application Support/Mullvad VPN",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mullvad.vpn.sfl*",
    "~/Library/Logs/Mullvad VPN",
    "~/Library/Preferences/net.mullvad.vpn.plist",
    "~/Library/Preferences/net.mullvad.vpn.helper.plist",
  ]
end
