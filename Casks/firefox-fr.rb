cask 'firefox-fr' do
  version '49.0'
  sha256 '0bdfff07e790df56f94f7fe88557139667ba3dfc90c428ec3958d3c05654692b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
