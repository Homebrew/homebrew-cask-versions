cask 'firefox-it' do
  version '49.0.1'
  sha256 '644b07f956ae169a5ad2bf5a7c1d57c4379ea91cd5089e207cd4348eeca1d3c2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
