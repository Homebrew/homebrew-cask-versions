cask :v1 => 'emacs-nightly' do
  version '2015-09-27_01-41-00-f49e3a2'
  sha256 '97fc36032478d204da6adb55b434d27c26fe1e18ff89f65988346161e295a455'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
