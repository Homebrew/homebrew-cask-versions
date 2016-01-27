cask 'firefox-pl' do
  version '44.0'
  sha256 '402567b9bc1ebcc38a847a7106beb85b865432def40aca60a68c76a1dd7bd15a'

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
