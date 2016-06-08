cask 'firefox-zh-cn' do
  version '47.0'
  sha256 'c2a005601bc5ac5fe1dded056b66c25bb0ec8f27907ef67e2ba3f92b5fd9f9a3'

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
