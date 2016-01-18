cask 'firefox-beta-ja' do
  version '42.0b9'
  sha256 '74367fb868b6f9441a8af29c4c0909e0ba01c63bf4940bc1eaa96f0014d7a7e6'

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
