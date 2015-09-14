cask :v1 => 'firefox-beta-ja' do
  version '41.0b9'
  sha256 'ad37944066d0ce76de4df0bc145ec0f8f4e6d0d9cfe7913026918f906cb287c2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/channel/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
