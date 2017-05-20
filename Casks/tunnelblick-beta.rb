cask 'tunnelblick-beta' do
  version '3.7.2beta02_build_4830'
  sha256 'aeb4494444f0acbc6b8f45de9b30ba85eb96cccc921852f6a308438c4297bbbf'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          checkpoint: '91e22e98032e0143efb02618a5ea3cb1927c40d7e877bc609b2287da09da7a5c'
  name 'Tunnelblick'
  homepage 'https://tunnelblick.net/'

  depends_on macos: '>= :tiger'

  app 'Tunnelblick.app'

  uninstall launchctl: 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            quit:      'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
