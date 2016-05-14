cask 'firefox-beta-de' do
  version '47.0b5'
  sha256 '9ac233a3a1a97e09a3ea20c00de86d4fc64eadbc588d2ebb9f0ab0be6ed88e3a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
