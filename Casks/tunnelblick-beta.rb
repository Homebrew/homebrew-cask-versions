cask 'tunnelblick-beta' do
  version '3.6.6beta02_build_4581'
  sha256 'aab2c86279e1eb7b13b4a441d30518a50bc16dd4000500e24ec61f4d929a2a92'

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
