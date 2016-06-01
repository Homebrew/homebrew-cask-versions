cask 'iterm2-beta' do
  version '3.0.0'
  sha256 '78388bc20032511748fa21273acd9b75e253d7aa6b580b95347da5cd09a7b4f3'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
