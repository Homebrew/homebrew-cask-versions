cask 'firefox-de' do
  version '43.0.1'
  sha256 'e0dc98b9abf56200c7ffa6dffe7f3a56cd277778048e8169025b6a37d6c221a1'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
