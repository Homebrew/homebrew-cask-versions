cask 'firefox-beta-ja' do
  version '47.0b8'
  sha256 '505409b42d075cedeef6070cc16e37c0a3238d91a14add2c0bc06a367403e7ba'

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
