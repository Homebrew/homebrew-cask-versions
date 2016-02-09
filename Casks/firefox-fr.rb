cask 'firefox-fr' do
  version '44.0.1'
  sha256 '51cfa27e7f97c0db977b6835254462216d00c3b442b9af3832bfd1a8804e739e'

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
