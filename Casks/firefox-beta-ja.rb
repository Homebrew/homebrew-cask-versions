cask 'firefox-beta-ja' do
  version '45.0b10'
  sha256 '1b7ff03cdcacd8379682197b45ffb5025b27b8d364893ff8d7b33109f651554d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/channel/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
