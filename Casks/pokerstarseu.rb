cask :v1 => 'pokerstarseu' do
  version :latest
  sha256 :no_check

  url 'http://www.pokerstars.eu/PokerStarsEU.app.zip'
  homepage 'http://www.pokerstars.com/'
  license :freemium

  app 'PokerStarsEU.app'

  zap :delete => [
                  '~/Library/Preferences/com.pokerstars.eu.user.ini',
                  '~/Library/Preferences/com.pokerstars.PokerStarsEU.plist',
                 ]
end
