cask 'mullvadvpn-beta' do
  version '2020.5-beta2'
  sha256 '7a9c2d59f6f6800a2ea0f65b1b817e5da791b3ddeaabd3be2ab931457b33313f'

  # github.com/mullvad/mullvadvpn-app/ was verified as official when first introduced to the cask
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
