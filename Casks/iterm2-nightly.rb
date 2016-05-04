cask 'iterm2-nightly' do
  version '2.9.20160504'
  sha256 'b16a0fbdca788f2b60dc8c322a75b3e8a521bfd5cb904586210b74873c85cf91'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'e1345b21b69a14a4cff21c4356e969cbe9330b8fcd69dca74b56aeb2d7deeaee'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
