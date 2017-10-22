cask 'clementine-latest' do
  version '1.3.1-388'
  sha256 'd34a9ab5c71c3e84420d6ce7e2f7426455a125a3a9aa86b86806188b2ecc0eac'

  url 'https://builds.clementine-player.org/mac/clementine-1.3.1-388-gf1b767f.dmg'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'

  conflicts_with cask: 'caskroom/cask/clementine'

  app 'Clementine.app'

  zap delete: [
                '~/Library/Application Support/Clementine',
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ]
end
