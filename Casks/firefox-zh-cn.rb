cask 'firefox-zh-cn' do
  version '49.0'
  sha256 'f5f91252073f3b8d9355b1167465d17ca909ffeef2f1e9d0905d9c2920e2dacb'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
