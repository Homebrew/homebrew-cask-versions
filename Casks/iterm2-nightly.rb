cask 'iterm2-nightly' do
  version '2.9.20160114'
  sha256 '6cd3beeaccba47b6559511b12a270ee2bd70443430b5eccc19dfab6ab89df811'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: 'b6e6d023cf63d28fb5ed9198302b83b36cb045bd73af898661516d274c27f439'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
