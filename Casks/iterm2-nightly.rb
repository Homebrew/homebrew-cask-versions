cask 'iterm2-nightly' do
  version '2.9.20160518'
  sha256 '3c1583d15cbe31a5073bdd65a3bc4f159d3bd9528f28751f68d1b2bde02a6900'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '72c9841de62d226df8a229caa14be2c48ac9bd7e8a359784670e7f5210923ec7'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
