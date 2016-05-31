cask 'iterm2-nightly' do
  version '2.9.20160531'
  sha256 '7a70651152032150bc8f4ccca0032528b9a9f48f1d0878a674319a43ef9a83ff'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '98fbf75c2ef0341d026e10211a6f333d15dd9c77cec36eeecdc853e632b38a6a'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
