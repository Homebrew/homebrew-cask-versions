cask 'iterm2-nightly' do
  version '3.1.20170519'
  sha256 '8b0e99a5ae278caf517193919232a02e1b56341ced5046aab434ecf139b81d16'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'e9882404575bcbe5f5c7ae3bd11e4cdfd41d64851ceeae89532f9b7609ad8b22'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Preferences/com.googlecode.iterm2.plist',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
              ]
end
