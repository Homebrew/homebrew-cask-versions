cask 'tunnelblick-beta' do
  version '3.6.10beta04_build_4730'
  sha256 '085a0fb26423c86d8927f685f3ad2b69b4d8f5bc1fdf5b9b5c5c23abf2b63f15'

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
