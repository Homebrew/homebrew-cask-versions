cask 'iterm2-nightly' do
  version '2.9.20160422'
  sha256 '9006f0a971f9e80ce5347379c587c1433350df72b692a7374fe2fb79a9c9a300'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '193d7eb8e1301b5084c8d66a12ae3f25d750d0a10d00e1a56011b88671b201e6'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
