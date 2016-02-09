cask 'firefox-zh-tw' do
  version '44.0.1'
  sha256 '2b62338695cbd0f08808ff8ee1aeff9576f01d520e7cc26f2eb2ff42adf466a2'

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
