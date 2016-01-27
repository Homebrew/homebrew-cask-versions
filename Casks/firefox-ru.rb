cask 'firefox-ru' do
  version '44.0'
  sha256 '817c5eeea453cad9979d32b3918f6ff2a87c7509a21b83f83bd90f12d846c26d'

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
