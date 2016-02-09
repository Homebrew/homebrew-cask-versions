cask 'firefox-ja' do
  version '44.0.1'
  sha256 '78720931d78b11065fce60025a28d9776735001d076ec70c2fc9d71bd2239aa1'

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
