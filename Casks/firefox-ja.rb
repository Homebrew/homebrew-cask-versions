cask 'firefox-ja' do
  version '45.0.2'
  sha256 '5ff264bb62172758e44da2451e06b2c08516f843412d0d3a89a7f88a74ef6649'

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
