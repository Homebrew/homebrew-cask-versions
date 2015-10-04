cask :v1 => 'emacs-nightly' do
  version '2015-10-04_01-41-15-45d0b3d'
  sha256 'f1a57b5ec233555e781ca2c6493060a370929318a43d567d1ed4df22454d8a3d'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
