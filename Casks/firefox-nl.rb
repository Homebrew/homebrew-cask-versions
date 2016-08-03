cask 'firefox-nl' do
  version '48.0'
  sha256 '07eed32adb7d195acfafa4b5e7e4b9c27be0d02de305a96d5719f554469349db'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
