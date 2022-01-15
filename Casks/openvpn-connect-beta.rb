cask "openvpn-connect-beta" do
  version "3.1.1.1089"
  sha256 "92ef85ccf5fff1665b26d2f55b1a8694cbc9df1f284ec4795b6413879fe17772"

  url "https://swupdate.openvpn.net/beta-downloads/connect/openvpn-connect-#{version}_signed.dmg"
  appcast "https://openvpn.net/client-connect-vpn-for-mac-os/",
          must_contain: version.major_minor_patch
  name "OpenVPN Connect"
  desc "Client program for the OpenVPN Access Server"
  homepage "https://openvpn.net/client-connect-vpn-for-mac-os/"

  conflicts_with cask: "openvpn-connect"
  depends_on macos: ">= :yosemite"

  pkg "OpenVPN_Connect_#{version.major_minor_patch.dots_to_underscores}(#{version.split(".").last})_Installer_signed.pkg"

  uninstall quit:      "org.openvpn.client.app",
            launchctl: [
              "org.openvpn.client",
              "org.openvpn.helper",
            ],
            script:    {
              executable: "/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh",
              sudo:       true,
            },
            pkgutil:   [
              "org.openvpn.client_framework.pkg",
              "org.openvpn.client_launch.pkg",
              "org.openvpn.client_uninstall.pkg",
              "org.openvpn.client.pkg",
              "org.openvpn.helper_framework.pkg",
              "org.openvpn.helper_launch.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/OpenVPN Connect",
    "~/Library/Preferences/org.openvpn.client.app.plist",
  ]
end
