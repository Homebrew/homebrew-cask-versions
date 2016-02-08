cask 'iterm2-beta' do
  version '2.9.20160206'
  sha256 'b9c680b089bad6829246019e1ebb24017992fbbbd89d58b13f0ac6d9816ff5a5'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
