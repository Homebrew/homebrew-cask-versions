cask :v1 => 'iterm2-nightly' do
  version '2_9_20151121'
  sha256 'c37c4e6334757a5b5e113fc71b02222b5f08c052931f36de5b0b59db416d55fc'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml'
  name 'iTerm2'
  name 'iTerm 2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'
  
  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
