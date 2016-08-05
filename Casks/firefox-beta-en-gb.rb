cask 'firefox-beta-en-gb' do
  version '49.0b1'
  sha256 '1234f6295ba617a710eb5ca0da98778bfb1133c6cf58a162970b4e4c27b15cf7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
