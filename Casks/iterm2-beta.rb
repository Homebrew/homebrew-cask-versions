cask 'iterm2-beta' do
  version '3.0.4'
  sha256 '0cb3dc26a47ea7f76ac43156ff1c88163726c13154d695b254161a91ce948ad6'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
