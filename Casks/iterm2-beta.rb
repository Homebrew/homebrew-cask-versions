cask 'iterm2-beta' do
  version '2.9.20160510'
  sha256 '4c8273c95a0200c175199f96d448700381838dca754ec5e1cfa41b934c305642'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
