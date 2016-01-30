cask 'tunnelblick-beta' do
  version '3.6beta18_build_4486'
  sha256 '7016a9b8244c60a48cc26be417080dc0865a32ad7c02d26ef0b53f7a36ddb086'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          checkpoint: 'dbeb8845f3fb88a2b3faf4bb3a9ef2b9a0af19b586a0fd03b83fa88d8583570c'
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
