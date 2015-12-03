cask :v1 => 'tunnelblick-beta' do
  version '3.6beta14_build_4441'
  sha256 '3c72a667b5999b7bfd239dda464309aba741415875b3cca4321c4eb08b203f46'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '3d0d7a0240db7bb0e4ec4729a7fce804a261492461444a36d3b6c38c9d8ad4fb'
  name 'Tunnelblick'
  homepage 'https://tunnelblick.net'
  license :gpl

  app 'Tunnelblick.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  depends_on :macos => '>= :tiger'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
