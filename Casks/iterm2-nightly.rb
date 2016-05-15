cask 'iterm2-nightly' do
  version '2.9.20160515'
  sha256 '6e70d83dc69ac0dd57ea8a6f4803218bd1d4d4c757cdb6fdc1313ee158762d9c'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '3cd92c32fdcc320557bf5e72eef510e783050c616e0c8ff7936ab18829561cd1'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
