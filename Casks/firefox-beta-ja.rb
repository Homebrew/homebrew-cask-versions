cask 'firefox-beta-ja' do
  version '47.0b7'
  sha256 '359cfd0f0bd67999b39f27b4945b5d73ae2fa0be139620ff2fc00494cf60cca0'

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
