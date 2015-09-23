cask :v1 => 'firefox-esr-ru' do
  version '38.3.0'
  sha256 '98cdd81ef9803d51b4f6a2424f094e4478385a0b6d8b9332168863f4b7360d4e'

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
