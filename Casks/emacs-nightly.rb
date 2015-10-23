cask :v1 => 'emacs-nightly' do
  version '2015-10-22_01-42-41-01d2af9'
  sha256 '0d6f943f8c30ed64e1c755bfce54465c48b30362120f625ab10f6e14e4db311e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
