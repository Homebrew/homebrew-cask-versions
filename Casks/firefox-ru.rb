cask 'firefox-ru' do
  version '49.0'
  sha256 '40f4b2d6df10d04dbcea4a3cc6f954c416eb1590caa434086f4a791cf53aca49'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
