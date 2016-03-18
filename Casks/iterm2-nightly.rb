cask 'iterm2-nightly' do
  version '2.9.20160318'
  sha256 '13171965cb95aee90241b78ebea91a96b9acb7dd0b5bcda6995f3b2804631131'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '94d915d3cdac1788992d0412f04082f084869cf48aa053632ce30d2031df5fad'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
