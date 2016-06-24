cask 'iterm2-beta' do
  version '3.0.3'
  sha256 '4987591f76eb69ee9e6aa8450b0121275045bd5d7c3f3c767a125b2fb28370ae'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
