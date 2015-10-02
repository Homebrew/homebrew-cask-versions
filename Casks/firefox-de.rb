cask :v1 => 'firefox-de' do
  version '41.0.1'
  sha256 'd668dbd18bcea8285bc8abb2d6401db60cebb53ebc9b8a144568228dfeb0b051'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
