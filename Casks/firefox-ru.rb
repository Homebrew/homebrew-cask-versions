cask 'firefox-ru' do
  version '47.0'
  sha256 '22fa832d6933d0f8fb2d074503aa0c3bac7e454b540da68fcdbf74418594b616'

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
