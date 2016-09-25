cask 'firefox-ru' do
  version '49.0.1'
  sha256 'e77704feb0a60d3420440a2712f9cf4889a3911e86a3f63e65c43b07af4b860e'

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
