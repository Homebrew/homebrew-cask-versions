cask 'iterm2-nightly' do
  version '2.9.20160120'
  sha256 '1f3411ca84fa7b0b89983ea97933fe827b39b4a9309528ffcffa1e03c0b1e89a'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'b6e6d023cf63d28fb5ed9198302b83b36cb045bd73af898661516d274c27f439'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
