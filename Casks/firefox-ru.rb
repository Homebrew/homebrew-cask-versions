cask 'firefox-ru' do
  version '45.0.1'
  sha256 '4b3eb26948ad97751fb58f0a6a7517f566c845cd50dff743b8f8f876246b7f6f'

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
