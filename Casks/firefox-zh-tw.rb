cask 'firefox-zh-tw' do
  version '43.0.4'
  sha256 '2edcd6aaa03ae767d47a238e0ed43a61f830a0824471267071545e6199a80f40'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
