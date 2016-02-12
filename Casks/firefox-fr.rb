cask 'firefox-fr' do
  version '44.0.2'
  sha256 '880d80bde9c359605d9fba6c7d19c43cf741e3f36ae9c1e425a59b813df9aa99'

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
