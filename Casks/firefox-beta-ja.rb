cask 'firefox-beta-ja' do
  version '48.0b4'
  sha256 '7068a318f5182d0a284a990330dbda50e50d8ab7f43e9ce90654f180e3aac4b8'

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
