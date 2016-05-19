cask 'firefox-beta-ja' do
  version '47.0b6'
  sha256 'a75e2be270e68ce3b1212b60d47c0fe62c5ca34cf08c53e5f2892c0a4ef41454'

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
