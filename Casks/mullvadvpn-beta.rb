cask "mullvadvpn-beta" do
  version "2022.3-beta3"
  sha256 "ef6fbdf5f254955e188e31b6405ae71af8e3daeeb78ff00e7c95cc7d7cc807e9"

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
