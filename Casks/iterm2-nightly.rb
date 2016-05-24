cask 'iterm2-nightly' do
  version '2.9.20160524'
  sha256 '892b2fe3567e0b2aaecc617f60321338638f28d02d3162f1b6532ad6a850d542'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '8de5befc667bdc71dec9c6f7cce824c44e1ee7e2b7462b571ce03a533d856845'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
