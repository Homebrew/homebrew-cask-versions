cask :v1 => 'firefox-de' do
  version '42.0'
  sha256 'b3f72b297adf1f2a0ab5e81b0b5eb9d227e8b62c481a58dc62bf468d46fbbca6'

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
