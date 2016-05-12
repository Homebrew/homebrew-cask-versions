cask 'iterm2-nightly' do
  version '2.9.20160511'
  sha256 '230bab8057972c7985b0ce59fc73bcce0c71324a337198b2fbc7763bb453a075'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '9e12f75fb29eb0a1896ee86ee60625192cbe2c12733e0c6afdea0500b569d60d'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
