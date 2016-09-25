cask 'firefox-beta-ja' do
  version '50.0b1'
  sha256 '8cbf37e5899e7a0a34268bb9cce2a1d930ba9b88b65f0a0b22a71f86d456ad0d'

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
