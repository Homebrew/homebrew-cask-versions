cask :v1 => 'firefox-ja' do
  version '41.0.1'
  sha256 '4f29aa5d53cea3c794ca61b434d4a4c79c278d2b9d3f23c363503c6026c9a785'

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
