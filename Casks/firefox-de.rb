cask :v1 => 'firefox-de' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=de'
<<<<<<< HEAD
  
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/new'
  license :mpl
  tags :vendor => 'Firefox'
=======
  name 'Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
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
