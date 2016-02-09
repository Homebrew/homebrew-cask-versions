cask 'firefox-ru' do
  version '44.0.1'
  sha256 'aae34e03596b4fe478905bb14c93d50870e3ba3307b288b80d573afda922b14f'

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
