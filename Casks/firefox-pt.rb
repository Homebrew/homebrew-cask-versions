cask :v1 => 'firefox-pt' do
  version '41.0.2'
  sha256 '50870072036fbc18e9c1bf4a98976af95b31f5434af7f3ca82e091ed2c164280'

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
