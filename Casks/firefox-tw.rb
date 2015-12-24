cask 'firefox-tw' do
  version '43.0.1'
  sha256 'd71e77f7cff1d940cd6b93d685f906f0c7b98c58e210dbd525d07938722830ea'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Firefox'
  homepage 'http://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
