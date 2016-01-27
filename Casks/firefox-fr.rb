cask 'firefox-fr' do
  version '44.0'
  sha256 '3292b12bdec6a28a45188572a8ec13e34b6d524802e86310cb795aaf3c6ccea4'

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
