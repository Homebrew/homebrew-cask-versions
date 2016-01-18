cask 'firefox-it' do
  version '43.0.4'
  sha256 '436bbb87f69d063f4d67deb777ef8b4e918dff4da978ae98070ad78d0da4c639'

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
