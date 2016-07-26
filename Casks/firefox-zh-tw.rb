cask 'firefox-zh-tw' do
  version '47.0.1'
  sha256 '5d94c0829147b9ceeb4f01f2a23b0baf272e2bb5ece7fbfa6c3c408b6ddf2366'

  # mozilla.org was verified as official when first introduced to the cask
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
