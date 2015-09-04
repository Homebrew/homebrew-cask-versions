cask :v1 => 'firefox-beta-de' do
  version '41.0b6'
  sha256 '4e4a13131fac4263729e56c638d53b1c2acf76462ea711fb88ccfdb07753cc25'

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
