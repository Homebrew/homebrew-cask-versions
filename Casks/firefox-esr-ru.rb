cask 'firefox-esr-ru' do
  version '38.6.1'
  sha256 '5ad748abed1c78923988222ca5bb69730123d4756e8ae128e15b5ad4e39db4fe'

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
