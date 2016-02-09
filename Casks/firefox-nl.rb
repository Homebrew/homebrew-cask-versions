cask 'firefox-nl' do
  version '44.0.1'
  sha256 '4a02475d242b42bf9bcb631870700eabceb34aac30d66e0b9f7cbfdfe71390d6'

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
