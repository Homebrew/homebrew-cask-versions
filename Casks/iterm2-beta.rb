cask 'iterm2-beta' do
  version '3.0.8'
  sha256 'fae85a7fd1c0c7706031b103dab6c2cf65bb6a82b4d0fbb0be9f75467875ae64'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
