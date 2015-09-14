cask :v1 => 'firefox-gl' do
  version '40.0.3'
  sha256 'd4d8e86fcdecbbf9b5ef11eb1e231defc5358cd3061ebb55b1ef6570069e652b'

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
