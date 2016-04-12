cask 'firefox-pl' do
  version '45.0.2'
  sha256 'bc7283786653130a3b070ab9f030dd7d9a2c0d361a3c698befa5ead2ed259cdc'

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
