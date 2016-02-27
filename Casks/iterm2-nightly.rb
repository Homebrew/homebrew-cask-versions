cask 'iterm2-nightly' do
  version '2.9.20160226'
  sha256 'bf6d71ef1c72ec1c505835ac0156d4a79492568065f9822a74684fb623aab5b2'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'fe448b6a514a3daeecf1b111db3a172faef5cfbd6bc34f72f34e62043d5c5e9e'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
