cask 'firefox-pt-br' do
  version '44.0.2'
  sha256 'b266c1ee281a7a04fe2546098291ce3a0822a5d6f956d1eb801c9b77ff5bfe5c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pt-BR"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pt/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
