cask 'firefox-zh-cn' do
  version '46.0'
  sha256 '87487effc00b51b59775714ad0f78f11616c5d5cf384ee8d44a615a44408ed81'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
