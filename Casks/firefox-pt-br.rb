cask 'firefox-pt-br' do
  version '49.0.1'
  sha256 '3ada4fa188c771a1f2827cbea1459f56a3872a3caffddb04fd3432fde4705726'

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
