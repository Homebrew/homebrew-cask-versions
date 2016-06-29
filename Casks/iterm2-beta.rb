cask 'iterm2-beta' do
  version '3.0.3'
  sha256 '9073c757b53de6f070be3955a214af9c21548d1dff1f41e74e447b9be726f119'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= 10.8'

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
