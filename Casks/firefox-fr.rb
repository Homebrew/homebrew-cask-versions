cask :v1 => 'firefox-fr' do
  version '41.0.1'
  sha256 '21bfb21d3a784b68f4d3873077c1ffba4df2d472808ace5fd93f27509c4cd904'

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
