cask 'firefox-zh-cn' do
  version '46.0.1'
  sha256 'c927e2701a15bfe589eafd4fa1032f3b7e4b909198b87868fa83cec7942f33fb'

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
