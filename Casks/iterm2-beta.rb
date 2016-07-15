cask 'iterm2-beta' do
  version '3.0.5'
  sha256 'a0081635383a7a1eda12c99c2800979168bfa757b737b0b15a2639bdb2ce6f95'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
