cask 'firefox-pt-br' do
  version '44.0'
  sha256 'ac051632a72358323f66d20ed009d17918c3ae0bd3594fb3cecc569801b71d57'

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
