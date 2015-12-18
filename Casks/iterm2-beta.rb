cask 'iterm2-beta' do
  version '2.9.20151111'
  sha256 'fb1c566412656c4e9f5cfdc892a1ea960d0b3124479fd4c60dc65ce48ee37c2e'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_9_20151111.zip'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
