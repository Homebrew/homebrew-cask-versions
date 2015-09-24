cask :v1 => 'emacs-nightly' do
  version '2015-09-23_01-41-14-325200a'
  sha256 'dfe0dddf3c9b3ad5376e1d74b01078bb38133fb6c73b85b00feee312c10659b5'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
