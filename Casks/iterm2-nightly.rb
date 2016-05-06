cask 'iterm2-nightly' do
  version '2.9.20160506'
  sha256 '8742ef81ec7c26577836961e20e21e442d0e05516ac7f1a6b8ce48a5f51c926e'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'd73af923ab572d559eec09922ffcafe2ea1b8bbab1b736f9faf534d8899bc9e4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
