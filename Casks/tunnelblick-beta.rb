cask 'tunnelblick-beta' do
  version '3.7.3beta02_build_4861'
  sha256 '048b5aae85a0e464c2cddbf1473d21d47f9698d4fcd25dedbbe98f2b4062a545'

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
