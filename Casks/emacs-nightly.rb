cask :v1 => 'emacs-nightly' do
  version '2015-10-27_01-41-03-22579ba'
  sha256 '904ebe3f0c243aec00b058530f4269858ed74d1f554a04b43ec5145b037b4523'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
