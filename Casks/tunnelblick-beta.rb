cask 'tunnelblick-beta' do
  version '3.7.3beta03_build_4870'
  sha256 '417a53255d7ed3585f7120375a150eb8cc9d33469b013b4b45ece0f8a3d4c957'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://github.com/Tunnelblick/Tunnelblick/releases.atom',
          checkpoint: '340646a885d5388cb56ba925eb83db2cecdbbbbbccf0de29d9fbd82e5c3ab810'
  name 'Tunnelblick'
  homepage 'https://tunnelblick.net/'

  app 'Tunnelblick.app'

  uninstall_preflight do
    set_ownership "#{appdir}/Tunnelblick.app"
  end

  uninstall launchctl: [
                         'net.tunnelblick.tunnelblick.LaunchAtLogin',
                         'net.tunnelblick.tunnelblick.tunnelblickd',
                       ],
            quit:      'net.tunnelblick.tunnelblick'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/net.tunnelblick.tunnelblick.help',
                '~/Library/Caches/net.tunnelblick.tunnelblick',
              ],
      trash:  [
                '/Library/Application Support/Tunnelblick',
                '~/Library/Application Support/Tunnelblick',
                '~/Library/Preferences/net.tunnelblick.tunnelblick.plist',
              ]

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
