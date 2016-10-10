cask 'pokerstarseu' do
  version :latest
  sha256 :no_check

  url 'https://www.pokerstars.eu/PokerStarsEU.app.zip'
  name 'PokerStars'
  homepage 'https://www.pokerstars.eu/'

  auto_updates true

  app 'PokerStarsEU.app'

  zap delete: [
                '~/Library/Preferences/com.pokerstars.eu.user.ini',
                '~/Library/Preferences/com.pokerstars.PokerStarsEU.plist',
              ]
end
