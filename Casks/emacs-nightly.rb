cask 'emacs-nightly' do
  version '2016-06-02_01-41-42-6b985764f07ae164d8142ba64774f2beb2856ca8'
  sha256 'e0911e3682b256f14a04d9dec39be2b395f734964a6f7c9a30cbab2589bb7c38'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
