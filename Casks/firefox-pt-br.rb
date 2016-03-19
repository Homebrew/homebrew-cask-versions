cask 'firefox-pt-br' do
  version '45.0.1'
  sha256 'ff5302a351d8ff14e74f7e3a41ba5907cf1ed99a9673685492cb28756b219d60'

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
