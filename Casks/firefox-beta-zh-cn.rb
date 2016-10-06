cask 'firefox-beta-zh-cn' do
  version '49.0b1'
  sha256 '821edaefe799f1760c2475bac87764bff34d1e610fbd668700797294a8914bf2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
