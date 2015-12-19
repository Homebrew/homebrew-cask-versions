cask 'firefox-ja' do
  version '43.0.1'
  sha256 '24b96b9f77f6c8dd6ad142f3beec5bc4014125d57d2302766329126cfa9f246e'

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
