cask 'firefox-ja' do
  version '45.0.1'
  sha256 'a34061e0b0a041b8acb7470d28fb36de1b6e4a067d66f1f703305fa0b14e2b21'

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
