cask 'firefox-esr' do
  version '45.0.2'
  sha256 '15097c3b63ef505bf78300fa4366ea5e55967e32defc31cd3bf301a31f4d2161'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/en-US/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
