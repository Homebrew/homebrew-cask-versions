cask :v1 => 'firefox-tw' do
  version '41.0.1'
  sha256 '422da3ed4bcc27071dd93d106a1300a63a32884f253abdf02a660061699a3f8b'

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
