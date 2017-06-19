cask 'iterm2-beta' do
  version '3.1.beta.5'
  sha256 '9b16a793b9f7001dfd190bb3318f79622b5bb590f3d423ea4cd5d17256df92ce'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
