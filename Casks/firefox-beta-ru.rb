cask 'firefox-beta-ru' do
  version '45.0b10'
  sha256 'adec630979ab8aa0b5980d1698294976dbc8bbdebb4e256b30e73126aeffaf20'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
