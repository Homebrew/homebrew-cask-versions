cask 'firefox-fr' do
  version '47.0.1'
  sha256 'ec0c8b2d331c7594349cf86bd402ff845979cfa555a00ee45fd28dbb7bc591ab'

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
