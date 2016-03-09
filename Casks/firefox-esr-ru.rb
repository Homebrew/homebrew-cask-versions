cask 'firefox-esr-ru' do
  version '45.0'
  sha256 '2ba35b286d72ab8f5dba491c9d7e78308d428d560c2de58ef25112c2a5e0fae4'

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
