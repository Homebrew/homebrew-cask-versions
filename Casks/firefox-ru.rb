cask :v1 => 'firefox-ru' do
  version '41.0.1'
  sha256 '7b23f1b1e3bd3dd975dbd207d83a369a7f9a35f4135b92a130e2d6f7883a9cec'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
