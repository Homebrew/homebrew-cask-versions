cask 'firefox-zh-tw' do
  version '43.0.3'
  sha256 'a81f10b0104a27d9d0b81e9f817fc6bd82175e56859166273dfece47d6076414'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
