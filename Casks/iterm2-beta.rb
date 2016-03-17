cask 'iterm2-beta' do
  version '2.9.20160313'
  sha256 '6d7a8885bfc6aba54248004aa287af6ef339d5fcf8e34ec87becd6d01b92f8fb'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
