cask 'firefox-zh-tw' do
  version '44.0.2'
  sha256 '8addeec412e1e2ff340c345ba2266e74bfc52b32da879cf2d1b1a3ed414aed9a'

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
