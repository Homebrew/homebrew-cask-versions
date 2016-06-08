cask 'firefox-pl' do
  version '47.0'
  sha256 '6b62fb3b2d5c934d90b03bfcd401cec31c136a9a024b9b2cce87bfbb9507b330'

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
