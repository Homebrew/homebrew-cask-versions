cask :v1 => 'tunnelblick-beta' do
  version '3.6beta10_build_4400'
  sha256 '724b5ec4f2396159b057e29b3278708d8d7ce356ca078f2680026a958f47e2ab'

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
