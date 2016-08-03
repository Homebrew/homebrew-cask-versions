cask 'firefox-zh-cn' do
  version '48.0'
  sha256 '39147558cfaeba6f4a4e6fa1f329537809b7447e9ec90c6857a8614a259295b7'

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
