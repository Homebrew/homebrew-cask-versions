cask 'iterm2-beta' do
  version '3.1.beta.1'
  sha256 'bacb379041382d181ca7998b04b68db2f3a40107699b860c9c43e3595ac9542e'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
