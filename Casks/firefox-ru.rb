cask 'firefox-ru' do
  version '46.0.1'
  sha256 '08d02c1d60ef99614e323669b4b47b4119826752c7418389328acd871e8bed5a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
