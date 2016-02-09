cask 'firefox-zh-cn' do
  version '44.0.1'
  sha256 '6a3bdaddc958fe94e332f258c3bbf7570f5c2fb9e556e015409111d8ecae2dc3'

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
