cask 'firefox-beta-ja' do
  version '47.0b9'
  sha256 '73e0a768d996b5b72b16718b70269d83eef9dc5a89b64d1f9a93d73e209369ea'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/channel/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
