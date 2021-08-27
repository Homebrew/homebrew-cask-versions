cask "adguard-vpn-beta" do
  version :latest
  sha256 :no_check

  url "https://static.adguard-vpn.com/mac/release/AdGuardVPN.dmg"
  name "Adguard VPN"
  homepage "https://adguard-vpn.com/"

  pkg "AdGuard VPN.pkg"

  uninstall pkgutil: "com.adguard.mac.vpn-pkg"

  zap trash: [
    "/Library/Application Support/com.adguard.mac.vpn"
  ]
end
