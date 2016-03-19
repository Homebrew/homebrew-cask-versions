cask 'firefox-zh-tw' do
  version '45.0.1'
  sha256 'e2d266d7f12c8b98bda4353f4689a30a62e0d18ec56566c4743dcf8856c9d101'

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
