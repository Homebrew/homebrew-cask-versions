cask 'firefox-ja' do
  version '43.0'
  sha256 '5b0d1fb31d3d9dd140642158b31035fae6cde59b8952d7800cd14406ae76c9b3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
