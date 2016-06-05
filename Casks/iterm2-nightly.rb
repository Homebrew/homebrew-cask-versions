cask 'iterm2-nightly' do
  version '3.0.20160604'
  sha256 'd29d5b20cefbe7ccdcfce1ccd33727587a29e876792112bc0e87179934730dc5'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'd4dd199f6f7368e6f800943eb0fc346990a9ec77153c9865777366b00e93e9d6'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
