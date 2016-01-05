cask 'firefox-pt-br' do
  version '43.0.3'
  sha256 '94da70eb8165d8c9b08259b1bc47c444d543319d7c5e812782516332cee33d92'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pt-BR"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/pt/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
