cask 'iterm2-nightly' do
  version '2.9.20160428'
  sha256 '77155eb5ba8a846bd5eb348de8da0d3158e710ff027b125b1c3e2d334aad5f16'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '21d61ff8efb656498df332e499d3e80f3d02224c039b9fa1fbc3522314366132'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
