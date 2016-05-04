cask 'firefox-beta-ja' do
  version '47.0b2'
  sha256 '504c175bbc48f48c9701fcec27a8e048cf99edbb247c24a917952adda71cb1f3'

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
