cask 'firefox-pl' do
  version '48.0'
  sha256 '60dca66ebdb3c2a4eeb7556eb947f43824fa8de5c98c74f24bbaa30782837b1e'

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
