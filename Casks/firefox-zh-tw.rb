cask 'firefox-zh-tw' do
  version '47.0'
  sha256 '5fd2a9c40050ed329c294034003b204597422610160f4fa52e2e8b4987d5592d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
