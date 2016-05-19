cask 'firefox-beta-de' do
  version '47.0b6'
  sha256 '8087bffd0f251d6fe6271aa138446e3b1b6522ec37df067b02f2940ac34734d4'

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
