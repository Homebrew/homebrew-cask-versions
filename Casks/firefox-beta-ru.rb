cask 'firefox-beta-ru' do
  version '50.0b1'
  sha256 '478107ffdc86afdf429b2001072bf7fa53857dcbe6d7a480ef67075e75e6d4c9'

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
