cask :v1 => 'emacs-nightly' do
  version '2015-09-08_01-41-37-6cd64aa'
  sha256 '45368af98e6cc90e0395c1ddf484e9af66345f9ae6501a9c4b46361ab1f3ea13'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
