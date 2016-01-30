cask 'iterm2-beta' do
  version '2.9.20160113'
  sha256 '608a67aedf53026236cdcbe41ef71e97d2ed9bee05a5769f02e0e1b7d5bed4e9'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
