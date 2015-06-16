cask :v1 => 'firefox-tw' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-TW'
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
