cask 'firefox-pt-br' do
  version '47.0.1'
  sha256 '0de1ca90a2bd6248e0575e4496f682fb7197c3cade095a6ff858efd839a971df'

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
