cask "mullvadvpn-beta" do
  version "2023.5-beta2"
  sha256 "dd99853e664735a789b5159e1bce08e95554705c7ac67760e06e7b0c7bd6e96d"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://github.com/mullvad/mullvadvpn-app/releases"
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+[._-]beta\d*)["' >]}i)
    strategy :page_match
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
