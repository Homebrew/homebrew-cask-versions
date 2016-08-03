cask 'firefox-de' do
  version '48.0'
  sha256 '8e7805a19d9b9f083bef4d215493acdce2785e1b10f1d557cc3b1cfcc7582427'

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
