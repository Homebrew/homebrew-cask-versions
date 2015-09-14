cask :v1 => 'firefox-pl' do
  version '40.0.3'
  sha256 '52973dbd4ef272abd04291a466d26af1f5fb0a077c7c193c61f01bc59ab3602c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
