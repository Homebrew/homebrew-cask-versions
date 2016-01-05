cask 'firefox-esr-zh-cn' do
  version '38.4.0'
  sha256 '7a2094e6483990906cd316309e03ec404f50de1077ea0f4332ecf649bad7e3ac'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=zh-CN"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
