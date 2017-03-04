cask 'iterm2-beta' do
  version '3.1.beta.2'
  sha256 '734c9fe31761f5da993458e94d198f30921053bde0a0ef1bbedcdfdab07a7114'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
