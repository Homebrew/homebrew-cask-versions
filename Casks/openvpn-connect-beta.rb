cask 'openvpn-connect-beta' do
  version '3.1.0.890'
  sha256 'acd08a223275510505eeb94db593b038a59b9dfe27a0885dfdd3495c95000b6e'

  url "https://swupdate.openvpn.net/beta-downloads/connect/openvpn-connect-#{version}_signed.dmg"
  name 'OpenVPN Connect'
  homepage 'https://openvpn.net/client-connect-vpn-for-mac-os/'

  pkg 'OpenVPN_Connect_3_1_0(890)_Installer_signed.pkg'

  uninstall script: {
                      executable: '/Applications/OpenVPN Connect/Uninstall OpenVPN Connect.app/Contents/Resources/remove.sh',
                      sudo:       true,
                    }
end
