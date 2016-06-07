cask 'firefox-pt-br' do
  version '47.0'
  sha256 'b4a5de0f90e3a52121ff1c1cb1bc4d442acd8aa2f085dd8adf8766525d5af9dd'

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
