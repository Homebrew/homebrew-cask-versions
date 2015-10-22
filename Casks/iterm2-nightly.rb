cask :v1 => 'iterm2-nightly' do
  version '2_9_20151022'
  sha256 'c5a244e277572d1d099bb36bb92c2df740529f97d498cd4e48ded1573d4e2dcf'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
