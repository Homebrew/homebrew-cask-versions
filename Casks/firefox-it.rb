cask 'firefox-it' do
  version '45.0.2'
  sha256 '1830cc58850c682a688bfcbdd4458f229f50bf1232a6fb85b9a0ee9071348166'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
