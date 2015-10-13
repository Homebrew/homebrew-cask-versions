cask :v1 => 'firefox-pl' do
  version '41.0.1'
  sha256 'c98e7be565e2b3ca39fa9b5169665641ac98be8a9de5853e5892c3a6b31e9fbd'

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
