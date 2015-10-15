cask :v1 => 'firefox-fr' do
  version '41.0.2'
  sha256 'a0def8a2b11138bba1d731f4c4b15b253225c981b5fe42839afa136f26eb33d5'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=fr"
  name 'Firefox'
  homepage 'https://www.mozilla.org/fr/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
