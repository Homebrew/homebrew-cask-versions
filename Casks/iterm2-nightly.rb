cask 'iterm2-nightly' do
  version '3.0.20160620'
  sha256 '5834b33e8731e47d89a7f4f22c4c533ccb76290dd20a22a24482008922f859da'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'ff509e9c5254656618a01f16ca54945dc4a462d9310e438ece6abe024e09de35'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
