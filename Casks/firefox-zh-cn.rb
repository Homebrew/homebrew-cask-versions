cask 'firefox-zh-cn' do
  version '45.0.1'
  sha256 '25cdf02cdc1a2474c7ebba35c35b2b06d23520f0076ae5af550d11f57e0164fa'

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
