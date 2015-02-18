
cask :v1 => 'firefox-ja' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ja-JP-mac'
<<<<<<< HEAD
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'http://www.mozilla.jp/firefox/'
  license :mpl
  tags :vendor => 'Firefox'
=======
  name 'Firefox'
  homepage 'http://www.mozilla.jp/firefox/'
  license :mpl
  tags :vendor => 'Mozilla'
>>>>>>> upstream/master

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
<<<<<<< HEAD
end
=======
end
>>>>>>> upstream/master
