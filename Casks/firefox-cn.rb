cask :v1 => 'firefox-cn' do
  version '41.0.2'
  sha256 '0d763d1d7841396a5c3e8d29d7ec8b387e7a8f942b32002d427e236ab8d9e676'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
