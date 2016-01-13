cask 'tunnelblick-beta' do
  version '3.6beta18_build_4486'
  sha256 '7016a9b8244c60a48cc26be417080dc0865a32ad7c02d26ef0b53f7a36ddb086'

  url "https://tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '0a5bcb70b865e548c17e38a6b4721366716d6f91ef137e64508db23eebd18abc'
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
