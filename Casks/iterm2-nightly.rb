cask 'iterm2-nightly' do
  version '3.0.3'
  sha256 'f572f06354d12aec1240826fa6519860dfde7f5fea05b26425c166c21745ace8'

  url "http://www.iterm2.com/nightly/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '66ef943cc1b62b61a76fad7ab73a261d1d0866af72442b4c4a9c809965816529'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
