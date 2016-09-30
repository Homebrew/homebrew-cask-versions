cask 'firefox-pl' do
  version '49.0'
  sha256 '87a7ce1d9ec6cb29fcc62aa7db328ffb855c43c4c5b6c71bae9bf065c104c3a7'

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
