cask 'firefox-ru' do
  version '43.0.2'
  sha256 'a2d4c96a182a4135fb77c4547aecd6736f30f199825e1c6bd14ce90f91a70edd'

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
