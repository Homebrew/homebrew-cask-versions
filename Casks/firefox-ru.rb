cask 'firefox-ru' do
  version '48.0.1'
  sha256 '95f2b682af2b47d32711da19c05ee1dd72c2447c0beacc42a53b8aae20400a8e'

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
