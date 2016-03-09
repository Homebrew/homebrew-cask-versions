cask 'firefox-fr' do
  version '45.0'
  sha256 '1558ab9c654db520178b272cf52365cb9eeaf20eb4ec86cf627274a2a8e63feb'

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
