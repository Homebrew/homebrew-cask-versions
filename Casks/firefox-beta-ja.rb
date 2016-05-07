cask 'firefox-beta-ja' do
  version '47.0b3'
  sha256 '33ba5c36a96a4dc14c2af97ba313bb6114144a003974d9f18dcf06fe3b2bbf9e'

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
