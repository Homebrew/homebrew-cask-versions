cask 'iterm2-beta' do
  version '3.0.10'
  sha256 '434f52c5d554005a94e1f471018d1480a029155205644dadd65377f5eeff3624'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
