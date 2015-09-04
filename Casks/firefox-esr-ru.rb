cask :v1 => 'firefox-esr-ru' do
  version '38.2.1'
  sha256 '5f7ada69ffbd1d0e6be6b423acbe169db9e66cf88a3b7ad5eb7040e5140aa505'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
