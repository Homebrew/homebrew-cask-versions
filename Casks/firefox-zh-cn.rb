cask 'firefox-zh-cn' do
  version '44.0.2'
  sha256 'd873ab13172db2645e25bc751e84fc6de35d6a6f2ef4b484037895e52562b3c5'

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
