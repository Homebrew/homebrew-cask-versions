cask 'firefox-beta-de' do
  version '47.0b9'
  sha256 'd5d52a9368f55b4d3f8937b1d60cf2a563e4b89be378a8c4b0eb9e62b89daf3c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
