cask 'firefox-ja' do
  version '43.0.4'
  sha256 '6b25217f060702943e8b7b3677ca723f31dde2f8d21d8c1dcf236bf55d580dbd'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
