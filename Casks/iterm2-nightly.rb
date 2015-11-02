cask :v1 => 'iterm2-nightly' do
  version '2_9_20151031'
  sha256 '745dc1fb58a42f687b49ad705990d658dc606a88f22e714278c58b77a0997249'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
