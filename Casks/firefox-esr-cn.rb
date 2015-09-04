cask :v1 => 'firefox-esr-cn' do
  version '38.2.1'
  sha256 'd3338916985f96e81d4e04b41e50a40dc4d14ced7fded2995165ead38be63086'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'
  
  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
