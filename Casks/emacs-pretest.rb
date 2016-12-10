cask 'emacs-pretest' do
  version '25.1.90'
  sha256 '095781645fc3445997cd8fb8732ebe90e60afac8db8f8ef62722152ed4120188'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: '4da05813d4719aad21898361951b09648cdb5ec8223f0e6ec91c4bb822b5a0e9'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
