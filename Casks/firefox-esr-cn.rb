cask :v1 => 'firefox-esr-cn' do
  version '38.3.0'
  sha256 'b0f827a08258ca46e766c5d04a6150d4cb40ada96808dcb5ec0132bff7a6cb8d'

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
