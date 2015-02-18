
cask :v1 => 'firefox-ja' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ja-JP-mac'
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'http://www.mozilla.jp/firefox/'
  license :mpl
  tags :vendor => 'Firefox'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end