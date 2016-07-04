cask 'tunnelblick-beta' do
  version '3.6.5beta04_build_4565'
  sha256 'a27adf5fae695263b8a698d2f5b75f191fe70b65d07af99f57bfdde29cb904d5'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
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
