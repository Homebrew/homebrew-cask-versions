cask 'firefox-pt-br' do
  version '46.0.1'
  sha256 'ce993e3cc6a8ab3bc3c4464776771daa40d5b8dcb091ee46cd88f9a803aadf2c'

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
