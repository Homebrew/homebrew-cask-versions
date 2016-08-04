cask 'firefox-beta-de' do
  version '49.0b1'
  sha256 'ba7511ce45075a8af32b1ec5d8349e641e6ee71cf3b6c45d21161c27ad312379'

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
