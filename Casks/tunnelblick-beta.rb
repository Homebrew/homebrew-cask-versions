cask 'tunnelblick-beta' do
  version '3.6beta16_build_4461'
  sha256 '076a1d18f85bd608584e97f544c3665dba3ce615b1fe58beb8cc2016c4248a6a'

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
