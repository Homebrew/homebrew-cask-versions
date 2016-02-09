cask 'firefox-pl' do
  version '44.0.1'
  sha256 '9fc1d0dde1f13dc1dfd8670b61931e68e8e619995e3166d75c845ea6cc79f05d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
