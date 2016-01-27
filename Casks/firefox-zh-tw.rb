cask 'firefox-zh-tw' do
  version '44.0'
  sha256 '2ac346c3fb8bc25b24fb64a0c71ae4667f3cb36e6839354ac09e2dce18ab8678'

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
