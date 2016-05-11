cask 'firefox-beta-zh-cn' do
  version '47.0b4'
  sha256 '8014dc79750f56ddf071595cb93aebaec9840b18891a94e8b41f838f0bcbf1e5'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
