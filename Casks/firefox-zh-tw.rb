cask 'firefox-zh-tw' do
  version '48.0'
  sha256 '645878ec11c398382c6fa0925aa74c9a004a02c5c0a4e6a40b5daad74e548714'

  # mozilla.org was verified as official when first introduced to the cask
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
