cask 'firefox-ru' do
  version '46.0'
  sha256 '19aa0a2ec64767f746afd23001114548fa5added53953b43dfcb0ce1f2614f27'

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
