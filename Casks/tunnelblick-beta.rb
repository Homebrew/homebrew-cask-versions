cask 'tunnelblick-beta' do
  version '3.6.3beta02_build_4559'
  sha256 '200b4d376db41aa740074d64f06a58d2115db2a5e56e1c4ed576d15a35205465'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          checkpoint: '91e22e98032e0143efb02618a5ea3cb1927c40d7e877bc609b2287da09da7a5c'
  name 'Tunnelblick'
  homepage 'https://tunnelblick.net'
  license :gpl

  depends_on macos: '>= :tiger'

  app 'Tunnelblick.app'

  uninstall launchctl: 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            quit:      'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
