cask 'firefox-pt-br' do
  version '45.0'
  sha256 '41cfff89a75d277d976041cfef2ce8d43455d3af60ec26b9de050c6f00245e08'

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
