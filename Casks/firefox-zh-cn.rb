cask 'firefox-zh-cn' do
  version '43.0.4'
  sha256 '1c1ed50ab8cafd58c0960ae88e633f772babda81bbe2534e33e76d0ab8d5647f'

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
