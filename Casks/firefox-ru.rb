cask 'firefox-ru' do
  version '45.0.2'
  sha256 'afd2212c0303a71b44a94f4360bf8ae642e57309108dda07002c9b3523b01195'

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
