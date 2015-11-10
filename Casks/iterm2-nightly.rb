cask :v1 => 'iterm2-nightly' do
  version '2_9_20151110'
  sha256 'ce283087bf3fad9892ff1f7dd0994c40c5b6461ca6339b9c28d2c1870290c7ee'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
