cask :v1 => 'firefox-beta-cn' do
  version '42.0b2'
  sha256 '90ddc64f85a7a9ecb0b6055eba8763c61cb91c92037a79a32ace2d96eda5a9ba'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
