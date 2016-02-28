cask 'iterm2-nightly' do
  version '2.9.20160228'
  sha256 '03ac7e6781cec1f7e4c2466c4aeb62192a9a046e4bf6ebd8f3efd2e8ae4c0f98'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'ddd06e72d67cef1a64c41d7cb9239f2de6be6beca8c59e5d65065d82d2b8048f'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
