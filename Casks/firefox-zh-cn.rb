cask 'firefox-zh-cn' do
  version '43.0.3'
  sha256 '049691bc931382e4a537054b2e0c97fd43e1e5ce19de88c12b3de14cd80b53dc'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
