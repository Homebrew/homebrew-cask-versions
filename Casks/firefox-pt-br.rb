cask 'firefox-pt-br' do
  version '46.0'
  sha256 'e0bb58f41b6950fcf602e8028b9ebf98f7d3c206f70b805d2a7a91e9845de9fd'

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
