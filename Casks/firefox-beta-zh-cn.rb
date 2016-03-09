cask 'firefox-beta-zh-cn' do
  version '45.0b10'
  sha256 '5c0bfc0e92928dd55bb0a53efa2c2b00c5cc59aef996fc013e58bbad7e91fb30'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
