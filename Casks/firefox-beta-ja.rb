cask 'firefox-beta-ja' do
  version '49.0b1'
  sha256 '56da8a4821b8208a5fd2ff917075959dc4a18c883b97fdefefbc609c1bf71514'

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
