cask 'iterm2-nightly' do
  version '2_9_20160102'
  sha256 'd453a58d86d5b5089b754de4be82465bcc955f654de9163b10c9d331aa23d2a4'

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
