cask :v1 => 'firefox-ru' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ru'
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/new'
  license :mpl
  tags :vendor => 'Firefox'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end