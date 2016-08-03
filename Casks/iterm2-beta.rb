cask 'iterm2-beta' do
  version '3.0.6'
  sha256 '446653b3c2e1da38b58cc32860b84e98cddce765e7fc8170395b9026edf10bf3'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
