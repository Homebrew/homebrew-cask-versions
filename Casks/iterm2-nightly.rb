cask 'iterm2-nightly' do
  version '2.9.20160207'
  sha256 '1b7d17a93f7b2b4c58ac7df6878496cfc34a34f08c4d3c1f5e301691873e74b4'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'd4b1417f6b3fb7fed1fc7e086c1044f3d2589015e197154bd78656d515e002da'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
