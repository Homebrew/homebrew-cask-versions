cask 'tunnelblick-beta' do
  version '3.6.9beta01_build_4651'
  sha256 '116c8fca41129032588c97640a86518f3a23df4a0d046820424f1feed889cc72'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  name 'Tunnelblick'
  homepage 'https://tunnelblick.net'

  depends_on macos: '>= :tiger'

  app 'Tunnelblick.app'

  uninstall launchctl: 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            quit:      'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
