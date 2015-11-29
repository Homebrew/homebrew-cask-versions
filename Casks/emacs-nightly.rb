cask :v1 => 'emacs-nightly' do
  version '2015-11-28_01-41-58-82ef79c'
  sha256 '8131c79a3ba2d623fa15f78a865a078a1e86ce98da4a2ebef190d5941bd7660e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
