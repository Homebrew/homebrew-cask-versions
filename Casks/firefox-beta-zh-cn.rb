cask 'firefox-beta-zh-cn' do
  version '47.0b7'
  sha256 'd26a2bc41512bcd4d376ea34994611fd0f31fad127cfc76f6217d354aec7b4b8'

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
