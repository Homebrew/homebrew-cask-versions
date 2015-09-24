cask :v1 => 'firefox-ja' do
  version '41.0'
  sha256 'c58798d56bd2b93e15c5c36feb998530cc33597821f37aaecaa5c41264297517'

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
