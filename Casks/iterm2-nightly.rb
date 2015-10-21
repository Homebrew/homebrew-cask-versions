cask :v1 => 'iterm2-nightly' do
  version '2_9_20151020'
  sha256 '978ad84847776c8eb46b591abb7c9f3db45376fc22ee0554d08258c1a03abe32'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
