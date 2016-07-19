cask 'iterm2-nightly' do
  version '3.0.3'
  sha256 '3585a83abfdec1a54bd4ff61786099328aa3f3cae471227d54a2a98926e71b6f'

  url "http://www.iterm2.com/nightly/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '083908c06413f4aa9b12aa9945049401bf56e48e8755849c6a20d6b3288382f1'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
