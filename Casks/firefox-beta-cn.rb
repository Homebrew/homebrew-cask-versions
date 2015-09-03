cask :v1 => 'firefox-beta-cn' do
  version '41.0b6'
  sha256 'c2f5ddb531fdf7b651e1b18f638b3d3fee7634c2b59eca64410509451f37af75'

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
