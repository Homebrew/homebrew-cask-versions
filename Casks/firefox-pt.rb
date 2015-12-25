cask 'firefox-pt' do
  version '43.0.2'
  sha256 '1d3b634e9c32f4fce4045bb7397c70ebdddd38faa6a36644d37e3ab1778eff49'

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
