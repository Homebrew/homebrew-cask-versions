cask 'firefox-beta-ru' do
  version '47.0b2'
  sha256 'b2ea0fc3570e8e7f17872e056a1e9aee88ba4d7228ef98123205b44d67bed3ab'

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
