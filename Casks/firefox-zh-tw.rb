cask 'firefox-zh-tw' do
  version '45.0'
  sha256 '6711fd89e37efcf724e10d531c15ab0e3ae1cbebdd2b4061c15d136c291a9cde'

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
