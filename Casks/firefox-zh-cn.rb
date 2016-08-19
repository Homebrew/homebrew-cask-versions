cask 'firefox-zh-cn' do
  version '48.0.1'
  sha256 '24ba28d411fa8fda7683a8ac12c7a0cd918a7b0fe71840c243efbbfce2fd8ee1'

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
