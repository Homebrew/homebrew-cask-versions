cask 'iterm2-nightly' do
  version '2_9_20160108'
  sha256 '32a41bb8cbf165e495a62f0dff86c80984fe78c94602ca8a3cb6727f5fb37d54'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          :sha256 => '74e804add307c0eba9dd52a3cfa8eda633cfbfe839f09956ff06306c9b1fcadc'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
