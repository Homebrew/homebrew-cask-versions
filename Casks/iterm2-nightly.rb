cask 'iterm2-nightly' do
  version '2.9.20160519'
  sha256 '97928636f143cccc43d882f59b6546fbcda041c6425ac7b51c93b1b36318d292'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'dcfe7ccf27d5df58363d714736cceb33fa4cf470cd97645a49d3fa3a9062a87e'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
