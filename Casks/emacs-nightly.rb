cask :v1 => 'emacs-nightly' do
  version '2015-09-13_01-41-28-fc9dc03'
  sha256 '9b3d7df3ea1b42095ce5bf228b587ebbaf407652525b64e208a312d3c0c15262'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
