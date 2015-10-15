cask :v1 => 'emacs-nightly' do
  version '2015-10-15_01-43-26-453af81'
  sha256 '388e54e25cb6db80ec6b1b5588387c3abeab76f47391b948ed6488e6b58d0d3c'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
