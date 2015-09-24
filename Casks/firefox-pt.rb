cask :v1 => 'firefox-pt' do
  version '41.0'
  sha256 'cc606d64717d66cd8500016fa1a5bf35f880c5cd5c878ba77df01d3870e43617'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pt-BR"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pt/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
