cask 'firefox-beta-ja' do
  version '47.0b4'
  sha256 '8cc611cfc79f34430983b844b630f8302ec48e9f89a6b72af007e8f8e489a4b0'

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
