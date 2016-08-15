cask 'firefox-beta-ja' do
  version '49.0b3'
  sha256 'e7e800f320db288fd06155209784bfa5d29edd4e9159d814707f324ef85e33a9'

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
