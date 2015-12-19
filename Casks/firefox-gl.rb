cask 'firefox-gl' do
  version '43.0.1'
  sha256 '417fa915dbe47c8970e88fe2f60913a4775406f055276aac7dbfae5dc1aac4e7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
