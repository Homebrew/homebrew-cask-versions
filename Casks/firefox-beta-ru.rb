cask 'firefox-beta-ru' do
  version '47.0b4'
  sha256 'ebf6599a4855b8b83e2f07dedad5288b485e2c1af6550c81a693f4ca7de8166e'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
