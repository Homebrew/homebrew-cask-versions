cask :v1 => 'iterm2-nightly' do
  version '2_9_20151210'
  sha256 '758acfc1b862e1fbb3cb77d32f27aececf08745455b7a4934b131f42ad2a2f08'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
