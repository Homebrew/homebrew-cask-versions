cask 'firefox-beta-zh-cn' do
  version '42.0b9'
  sha256 'b04642cf9ff1abf58e67583c4740da2b1cfcb928c168e825f237f83be8bd2d47'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
