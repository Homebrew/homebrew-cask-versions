cask 'iterm2-beta' do
  version '3.0.14'
  sha256 'bed63a85d48d4e0ec2f49858aa4a6ce5dcb7bb3eaf78f87124ed5239b6a7e936'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
