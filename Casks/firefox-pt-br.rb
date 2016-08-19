cask 'firefox-pt-br' do
  version '48.0.1'
  sha256 'f3e41542197aec440cda19d2fd235a1ea9da7043e9fb499638509e2d9ff1d5d4'

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
