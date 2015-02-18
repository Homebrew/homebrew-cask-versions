cask :v1 => 'firefox-cn' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=zh-CN'
<<<<<<< HEAD
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/new'
  license :mpl
  tags :vendor => 'Firefox'
=======
  name 'Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/desktop/'
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
