cask :v1 => 'firefox-cn' do
  version '41.0.1'
  sha256 '9774877ff3ed2a972d0d73fece3ce1cb3b68303921f15e5046fcd4ad65a8dc18'

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
