cask :v1 => 'iterm2-nightly' do
  version '2_9_20151114'
  sha256 'd563472286cc50770a14b1cb8d6bf4afb3bf3b543dfafc80a098902f6c3d4a5b'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
