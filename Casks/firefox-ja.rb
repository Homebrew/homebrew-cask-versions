cask 'firefox-ja' do
  version '44.0.2'
  sha256 '780bf7a35b954b409116387d5ee7673a1ca56200381adbbdb1b5373e29dc75a2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
