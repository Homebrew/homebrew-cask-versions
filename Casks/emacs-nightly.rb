cask 'emacs-nightly' do
  version '2016-07-24_01-41-37-4d34210256c6e07cb713ece8d7ad998a873f0f94'
  sha256 '33f010be39abd47b5574e88c00278b19498c7b801cb6538dedce38d50485482d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'b43f26933d1d0ab8a623e3f95ad15f11753a514c01137d881988a5e532636435'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
