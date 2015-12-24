cask 'firefox-ru' do
  version '43.0.1'
  sha256 '060b74fd90dafbb4dcfac34a10613ad0ace410c2a1696180c12691fd432ad048'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
