cask :v1 => 'iterm2-nightly' do
  version '2_9_20151113'
  sha256 'c87d397f688274733926488d85b009a7d9d93c2d2767c8cfb34dbb653bb29878'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
