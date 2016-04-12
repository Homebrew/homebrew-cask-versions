cask 'firefox-zh-tw' do
  version '45.0.2'
  sha256 'd892995a1bafdfc3bd7ca215f70504e89f61e4af1c4cb2126ed275412a8f1c40'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
