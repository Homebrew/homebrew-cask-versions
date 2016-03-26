cask 'iterm2-nightly' do
  version '2.9.20160324'
  sha256 'e3750d9a980d4ae35b74129197ba004c6f7775ff4ce8032e4d911b84d7a94c93'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'af6997c89d0c76b3a94c37db338daa1827d74d58fb62da284075f3af42281e48'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
