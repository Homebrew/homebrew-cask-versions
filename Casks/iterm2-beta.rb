cask 'iterm2-beta' do
  version '3.0.11'
  sha256 'c7760ad2cd4c8749e3e38b4dd1ee1ed854e0dea3f058e5508dffcf99fcf9620c'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
