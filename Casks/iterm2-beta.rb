cask 'iterm2-beta' do
  version '3.1.beta.4'
  sha256 '266745852d529cfbfdb17b839cdca03c09a8b420b2b8865a022d37830e0e89a0'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
