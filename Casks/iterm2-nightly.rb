cask 'iterm2-nightly' do
  version '2.9.20160424'
  sha256 '9235961d8fe77e593750b23bbc386428f3f867dda25d252d74648bde796a6285'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'd6aa00d69455c2f0947f71cafc29bdb50fe6a760669d3af8818e8eed07db3c7a'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
