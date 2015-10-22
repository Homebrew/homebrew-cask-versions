cask :v1 => 'firefox-beta-de' do
  version '42.0b8'
  sha256 'e870a3ce8b9f938d9c59fa349bff7afb719c1d60732abf55749c97cb474090fb'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
