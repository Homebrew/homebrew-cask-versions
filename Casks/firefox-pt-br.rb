cask 'firefox-pt-br' do
  version '43.0.4'
  sha256 '8bf9ec3e3dc1611f6ce1850d115eb26f7c0e08813865f770b160b07cb7b99f7c'

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
