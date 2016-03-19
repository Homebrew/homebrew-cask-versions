cask 'firefox-fr' do
  version '45.0.1'
  sha256 '8e180d0138a94146b54a793962f566ab0b2642d61b011c5b332a775be2b7041b'

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
