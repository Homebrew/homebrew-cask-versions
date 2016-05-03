cask 'iterm2-nightly' do
  version '2.9.20160503'
  sha256 'e55c3d3beec8f3afa8a5701dc6c222e5256e26216d2087290bd08c77c573ac1a'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '35215b5e70c42834612ca657eff8e92cd313a7f457000d7618f5a0a66adf1ad7'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
