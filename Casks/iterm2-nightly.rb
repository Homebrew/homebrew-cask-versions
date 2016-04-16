cask 'iterm2-nightly' do
  version '2.9.20160416'
  sha256 'dff91f3a2bfbe46ea50d9ffa37e5c8bd5cec7cbe45683f643fd10bbfd110ba6a'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '9db8d1b6af561af5ecf9784504b062ebd97ebc7504395a4147ae9832633f9997'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
