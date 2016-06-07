cask 'iterm2-nightly' do
  version '3.0.20160607'
  sha256 '138b53b153acfd448fac3f3f810308e139a4da6b1b3c450d3b400e2f6e8f5ea9'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '36aa8e4de9d9614bdf216bcf19e4a575b43fa5d16073b76a5d59dce1d06aa2e4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
