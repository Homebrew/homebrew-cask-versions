cask 'pym-player-beta' do
  version '7beta,225'
  sha256 '147449ffe45dd8f7375ee53291cceb0570040f04951eae3c6ef00bdbd34cadff'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player-7-beta/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player-7-beta/'

  app 'PYM Player.app'
end
