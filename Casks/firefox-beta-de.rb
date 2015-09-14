cask :v1 => 'firefox-beta-de' do
  version '41.0b9'
  sha256 '72970f3b9562aeff8208f8f3af09f065c4f13a710560890fa916acca5623eff9'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
