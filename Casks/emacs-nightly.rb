cask :v1 => 'emacs-nightly' do
  version '2015-08-17_01-41-06-abd838e'
  sha256 '14bca4318e89750c0b80b5335ef329f2d7d452e8f378e1e642061d7dd1874e1d'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
