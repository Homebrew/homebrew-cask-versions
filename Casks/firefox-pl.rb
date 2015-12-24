cask 'firefox-pl' do
  version '43.0.1'
  sha256 'afce57831a222f9ee722b6cc7a825461ad4ec7170588e755fd8a021efce99bde'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
