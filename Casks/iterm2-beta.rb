cask 'iterm2-beta' do
  version '3.0.13'
  sha256 'b32cb66bf7fafd22c92adca4ea2d10c23e58d1398627aea5b15f1c396495b574'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
