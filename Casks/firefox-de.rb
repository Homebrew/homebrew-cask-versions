cask 'firefox-de' do
  version '46.0'
  sha256 'bb0cc0d03190b49eae7f47d86b960712a978f86f220b68028756d72eb5e21422'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
