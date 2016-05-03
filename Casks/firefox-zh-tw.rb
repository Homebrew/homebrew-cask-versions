cask 'firefox-zh-tw' do
  version '46.0.1'
  sha256 '387522c82f4a841248b0ef2ccc65a4e09e6a39d8b46f5b3f268553bb3de58bc6'

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
