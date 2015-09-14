cask :v1 => 'firefox-beta-gb' do
  version '41.0b9'
  sha256 'b4ee2ce269a456937779f7502b2122613af32e963abef2e4b9e150db8c2a0016'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
