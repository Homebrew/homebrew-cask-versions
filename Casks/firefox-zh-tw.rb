cask 'firefox-zh-tw' do
  version '48.0.1'
  sha256 'a974f7c44d5cc802b56f2d5eca370ea53b0f9779363c956cd49768e35a864d02'

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
