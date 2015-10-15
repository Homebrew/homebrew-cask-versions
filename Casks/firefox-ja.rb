cask :v1 => 'firefox-ja' do
  version '41.0.2'
  sha256 '64c5ba01a4f712dde0946ae1ed73eff3c088ccc2e5a1ec9caf38cbb360736067'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
