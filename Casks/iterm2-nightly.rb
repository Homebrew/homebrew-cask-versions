cask :v1 => 'iterm2-nightly' do
  version '2_9_20151023'
  sha256 'e54daa17bf835d175598b8209200b4f0a4eca5392ba20a258d04207724d3bc7a'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
