cask "mullvadvpn-beta" do
  version "2020.6-beta3"
  sha256 "bea7cf5dc08aea8b72321730fb96d7b89d67c425f18ff9d32aeb93f497764479"

  # github.com/mullvad/mullvadvpn-app/ was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast "https://github.com/mullvad/mullvadvpn-app/releases.atom"
  name "Mullvad"
  homepage "https://mullvad.net/"

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
