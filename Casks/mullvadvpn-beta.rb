cask 'mullvadvpn-beta' do
  version '2019.5-beta1'
  sha256 '65e320e1bd1ce351faa20f238e8c7bbe33517811ac7f5516a99223b0cd26de3f'

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
