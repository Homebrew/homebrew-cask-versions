cask 'firefox-pl' do
  version '49.0.1'
  sha256 '81712bfaf0e167d1408fe2b23e27374892121616e4fc26c996cf2a56ae52416a'

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
