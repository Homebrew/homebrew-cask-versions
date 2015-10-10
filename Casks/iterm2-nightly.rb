cask :v1 => 'iterm2-nightly' do
  version '2_9_20151006'
  sha256 '1b066544e3c2507c0ec43d6999ed5b450589651fc519f490dc289fb1a4a3d936'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
