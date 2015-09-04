cask :v1 => 'firefox-beta-ja' do
  version '41.0b6'
  sha256 'd046670e40afe56a1bd8abc4da71a88922166509848f3b3196a1a7197dc16e76'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
