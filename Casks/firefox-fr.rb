cask 'firefox-fr' do
  version '48.0.1'
  sha256 '463f3964929a730829bdd4d6cbcaaad35cbd3816b1826a63e81eb5c14e3a43df'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
