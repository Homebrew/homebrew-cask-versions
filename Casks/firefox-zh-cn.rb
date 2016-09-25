cask 'firefox-zh-cn' do
  version '49.0.1'
  sha256 '1f35d8a1359757e210c2b01b2891627a6be7425d99ad4f9a7b0487bba129d971'

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
