cask 'firefox-pt-br' do
  version '48.0'
  sha256 '8e017e32443ddff510b801f3cb3fe3c190da0a786a9c7a899f400c60c277e6f0'

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
