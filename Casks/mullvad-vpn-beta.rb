cask 'mullvad-vpn-beta' do
  version '2018.2-beta3'
  sha256 '0386b49021c7b760abf094224443b6a54a967bda4c89969caf40c0de3fec61cb'

  # github.com/mullvad/mullvadvpn-app was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast 'https://github.com/mullvad/mullvadvpn-app/releases.atom'
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  conflicts_with cask: 'mullvadvpn'

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   'net.mullvad.vpn',
            quit:      'net.mullvad.vpn',
            launchctl: 'net.mullvad.daemon'

  zap trash: [
               '~/Library/Application Support/Mullvad VPN',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mullvad.vpn.sfl*',
               '~/Library/Logs/Mullvad VPN',
               '~/Library/Preferences/net.mullvad.vpn.plist',
               '~/Library/Preferences/net.mullvad.vpn.helper.plist',
             ]
end
