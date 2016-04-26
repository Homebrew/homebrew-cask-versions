cask 'firefox-zh-tw' do
  version '46.0'
  sha256 'aa0132c238fc3ffef40a87dedf5c46706a7321f88aa183dfb8d675a32909367e'

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
