cask 'firefox-ru' do
  version '48.0'
  sha256 '59943f7d6f459fc7cc42a613a6c690b91e846eec3ea548f74fd3786edeb28fcc'

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
