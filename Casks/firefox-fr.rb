cask :v1 => 'firefox-fr' do
  version '40.0.3'
  sha256 '410e5f3815bb9ebd7addeefb597cf2c3b156765649f088f4d4d8173c2d968da2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
