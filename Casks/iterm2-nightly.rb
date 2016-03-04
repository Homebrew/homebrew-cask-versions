cask 'iterm2-nightly' do
  version '2.9.20160304'
  sha256 '9992d5bb32f8063f69e2f9cad6d227517db00b1cd53b61e5328955c74382b2da'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '7df389a2e563b52689447bf3349c4885089910c8b2ec64cbb0094564ecd8a345'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
