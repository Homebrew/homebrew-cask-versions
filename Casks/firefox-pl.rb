cask 'firefox-pl' do
  version '43.0.4'
  sha256 '264d8fd4b061d5a9f5a185c4b849ce57f8b5888889c7646bd1299746d932a2c7'

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
