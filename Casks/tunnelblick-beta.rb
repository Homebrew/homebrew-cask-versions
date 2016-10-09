cask 'tunnelblick-beta' do
  version '3.6.8beta10_build_4622'
  sha256 '895ef94693e810e6054fb533786c626cd7447958fe55cb38e83b7f7a7d02cd05'

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
