cask :v1 => 'firefox-tw' do
  version '42.0'
  sha256 'a97d8315764f76565f0ce6794a3f028ed22cd4115e1c9cc84dd6b3adee4b375a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Firefox'
  homepage 'http://mozilla.com.tw/firefox/new/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
  
  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
