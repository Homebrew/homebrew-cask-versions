cask :v1 => 'emacs-nightly' do
  version '2015-09-19_01-40-54-ba34956'
  sha256 '18fd4abf2d9d6d0214eda28dfa36b1d3d66b395dcc64ab28e48e32995518c5c1'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
