cask :v1 => 'firefox-tw' do
  version '43.0'
  sha256 '4818163e3a0a4f5a0546816cfdf29721aedc7b8c2d13d49e4e51e446280c4b26'

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
