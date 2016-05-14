cask 'firefox-beta-ja' do
  version '47.0b5'
  sha256 'fae82598d38828e6f8d3687e4212661f9cb3dc281d24d25958a717e29e10ecb4'

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
