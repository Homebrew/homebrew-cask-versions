cask :v1 => 'emacs-nightly' do
  version '2015-09-06_01-41-17-88b9a80'
  sha256 'bee8fd348a6aa448be0b109b0267280942fab066e708ad5b9e5eae31dbb9c6a2'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
