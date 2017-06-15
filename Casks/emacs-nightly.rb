cask 'emacs-nightly' do
  version '2017-06-11_01-41-11-517a0394d2ba15b517e2a2b7384a7cc98b11b80d'
  sha256 '37819d941188f8ee76adf9f228a6bfde5eee0c4dfd7a1799e3ff9dd4b10dfb8c'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'd29661d8fa407320834e735f781ac37ac1778728da64473291eae3fad985c909'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
