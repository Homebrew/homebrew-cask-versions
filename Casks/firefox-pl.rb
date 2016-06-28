cask 'firefox-pl' do
  version '47.0.1'
  sha256 '929d8c8b972fa2063dc850a23e9cb1d833f5b2596637266a1cae655f6942236f'

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
