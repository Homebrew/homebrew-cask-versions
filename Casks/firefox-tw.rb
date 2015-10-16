cask :v1 => 'firefox-tw' do
  version '41.0.2'
  sha256 '70145e1c31a896634332ae609e443d3b0763f25465ef2983e4163ec40da55a22'

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
