cask :v1 => 'emacs-nightly' do
  version '2015-09-26_01-41-29-80cc5d1'
  sha256 '649b1ba86838d90dbf0d552855ebc8098678331211434e9ef84c5afdb2d00f4e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
