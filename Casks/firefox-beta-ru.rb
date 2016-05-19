cask 'firefox-beta-ru' do
  version '47.0b6'
  sha256 'e035292d9e0fb01933107265254cd40562401f25480c37e886897e8e1d53f8ea'

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
