cask 'firefox-cn' do
  version '43.0.2'
  sha256 '064b0ee8112edc74008e4a529e17922bdbd5f9f47f5abef5b76935ef288aca7c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
