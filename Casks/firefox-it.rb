cask :v1 => 'firefox-it' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=it'
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/new'
  license :mpl
  tags :vendor => 'Firefox'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end