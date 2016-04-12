cask 'emacs-nightly' do
  version '2016-04-11_01-41-12-d6ea6453f3d1696b9e6cd0a0222fc77dc646365c'
  sha256 'd9cd431ddbe6e6710f63cea11182dc8bc83d910f10c326d2a7d8593ed827572e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
