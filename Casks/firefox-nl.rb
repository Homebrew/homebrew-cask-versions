cask 'firefox-nl' do
  version '45.0'
  sha256 '645ef6732e276509f41ba6acbc5f929cdbfde2d4567a96c1d88251e195692233'

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
