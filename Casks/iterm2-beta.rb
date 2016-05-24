cask 'iterm2-beta' do
  version '2.9.20160523'
  sha256 '843ac6da4459c6c3318ef39f349d24c6295dc4b176a4cd4c0d3d82cf1664aa6d'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
