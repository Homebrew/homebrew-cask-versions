cask 'firefox-beta-ru' do
  version '47.0b3'
  sha256 '8d033950bee87e6e4cbc3be1d57e197e7ea486f13e974676e6808ba70173db99'

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
