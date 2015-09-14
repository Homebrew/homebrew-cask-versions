cask :v1 => 'firefox-tw' do
  version '40.0.3'
  sha256 '9b781d626b379c298f61b0315860086ebac3d98d6bca22c53e393c9bc6d287ce'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Firefox'
  homepage 'http://mozilla.com.tw/firefox/new/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
