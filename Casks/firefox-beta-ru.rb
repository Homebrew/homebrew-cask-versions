cask 'firefox-beta-ru' do
  version '47.0b7'
  sha256 '8a6a240f21de0c7adf729b7d3d5f41cb4cad23ba5c0b40e1371eb08c7d800bc5'

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
