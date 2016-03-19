cask 'firefox-pl' do
  version '45.0.1'
  sha256 '76d03749a4fe0b777c50cd6c2924611ce7e5873af0d9d4de94c920551b068f0e'

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
