cask 'firefox-pt-br' do
  version '45.0.2'
  sha256 'f8497fd31689e5a53b42e02347793a1d61ce1026d5a761c881c7f3fb1d58fda5'

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
