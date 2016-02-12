cask 'firefox-pl' do
  version '44.0.2'
  sha256 '2a189ecc405dbf4f79f58fa6652ff1c24d54865624621f162889232160757b66'

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
