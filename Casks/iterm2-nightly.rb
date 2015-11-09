cask :v1 => 'iterm2-nightly' do
  version '2_9_20151105'
  sha256 'f72caae86a0eddcec1ea9ddc246ee2399d8218afb40f4940c7f0e120818a082d'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
