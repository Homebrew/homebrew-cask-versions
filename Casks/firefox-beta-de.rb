cask 'firefox-beta-de' do
  version '50.0b1'
  sha256 '40f9881c12d45de37c4b72f43272cf25b623b44ba6bad166b11b0820cd826083'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
