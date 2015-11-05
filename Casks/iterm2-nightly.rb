cask :v1 => 'iterm2-nightly' do
  version '2_9_20151104'
  sha256 'e9dd2234275b1fc519472896833dcd1bd23958a85d0012d25beb0d2ef6398a9c'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
