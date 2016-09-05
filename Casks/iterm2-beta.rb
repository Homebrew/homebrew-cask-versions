cask 'iterm2-beta' do
  version '3.0.9'
  sha256 '4e4b9decbc2327c795fa114156213d95482a882eab188825dfeb8df1ed13b9ab'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
