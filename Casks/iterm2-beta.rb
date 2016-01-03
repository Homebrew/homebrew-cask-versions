cask 'iterm2-beta' do
  version '2.9.20160102'
  sha256 '239ee19a0dce38cd95735fb29b901d80c340eb41e9c8282109ba2d224496ee07'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
