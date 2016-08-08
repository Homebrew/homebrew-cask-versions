cask 'iterm2-beta' do
  version '3.0.7'
  sha256 'd4fae6dd9e7f3173791bd7b56bc4fd3520fb197a374776833735e0f95fd6fa20'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
