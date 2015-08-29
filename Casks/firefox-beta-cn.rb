cask :v1 => 'firefox-beta-cn' do
  version '41.0b5'
  sha256 'f403a0e26ba68da2b71e8020fd95100ddfdf8dabd0b72e48b26dfeddc2ca0cd3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
