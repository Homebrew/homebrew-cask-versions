cask 'iterm2-nightly' do
  version '2.9.20160425'
  sha256 '6aeb1119c3857c5f43db92fee7cd9265370f7f2c169f0f24793932b25a584942'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'a07b094d855321f0ca2740ac94bf251d6c03b5d28362831bc5e78460d5e491a4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
