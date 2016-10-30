cask 'iterm2-beta' do
  version '3.0.12'
  sha256 'd500c5e376a05df6896f92504961142b7721efb9e235232d39545c7a3c5b7507'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
