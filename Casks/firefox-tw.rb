cask :v1 => 'firefox-tw' do
  version '41.0'
  sha256 'acf12280d81e6064d049ee53752371794c807c84310e22a362c5d78f24cab3d5'

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
