cask 'firefox-esr-ru' do
  version '45.2.0'
  sha256 '724e55be9c0211f5de63b8a7be3c580792ecb208038ce0835f0338e0e0bb0b5d'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/ru/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
