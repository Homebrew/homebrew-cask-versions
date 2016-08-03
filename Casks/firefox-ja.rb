cask 'firefox-ja' do
  version '48.0'
  sha256 '92b156f77116efe90ac9a3695ca7b3eaf2a47a7a37c458d4aaa6a1fafa72a5b2'

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
