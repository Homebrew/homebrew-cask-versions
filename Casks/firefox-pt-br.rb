cask 'firefox-pt-br' do
  version '44.0.1'
  sha256 'c77a615d912c4d58b99a5c450cb39230a0e521cbc715279700672113c610a60e'

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
