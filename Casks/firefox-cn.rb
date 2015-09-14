cask :v1 => 'firefox-cn' do
  version '40.0.3'
  sha256 '5235c3956aad47272ca2c9af107bfd1c901044829ffe38f3c55e819d02e7aa62'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
