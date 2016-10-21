cask 'emacs-nightly' do
  version '2016-10-21_01-44-43-56f8384bb3f20d55693a3a1db8aa2cf490e6d18e'
  sha256 'afe81b37ebf741db92ee1f2e603a21df2b67cb6ec09d7f70d99f4b9bb6b20b7d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'e852c334334af7d6d2368ae86162f98df15c479abdc9064361580172dfed4ae1'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
