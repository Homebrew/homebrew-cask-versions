cask 'iterm2-nightly' do
  version '3.0.20160602'
  sha256 '2aff114bacfa94dcaa14f9a30c8cb2264ea1d8f273369a6bcf602bfab635ee1a'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '542edae99b04f331a9a0753714435d6a8d754d712786e55cf8e558bb8a77588a'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
