cask 'firefox-pt-br' do
  version '49.0'
  sha256 '8ea17304c5bbfaa9517f46eadd7f41aa3915916aa72acefa5024b9b7862d568d'

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
