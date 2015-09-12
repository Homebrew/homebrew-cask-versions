cask :v1 => 'emacs-nightly' do
  version '2015-09-11_01-41-14-2498790'
  sha256 '1f01ecfa45cf1994363e8acabf6e7dd823d855efab8f20cff4002c7076964354'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
