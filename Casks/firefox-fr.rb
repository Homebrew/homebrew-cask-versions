cask 'firefox-fr' do
  version '43.0.2'
  sha256 'f0ecbc9519f6fec0d6caddceaa7dc988a0e7556ec5c60350bd78c1a97d714cf7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
