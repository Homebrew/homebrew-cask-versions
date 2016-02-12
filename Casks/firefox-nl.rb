cask 'firefox-nl' do
  version '44.0.2'
  sha256 '83f16dd13db54342ebf8191905aa13fed3875f5dd8002bfbd5346b4f86e7f8c7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
