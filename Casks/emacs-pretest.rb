cask 'emacs-pretest' do
  version '25.2-rc2'
  sha256 '1f5cc002a706915551d406f9bd465229fee749538a54f10fc52b27add597304d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: 'ecd9fa682e6f59e932c2a7c3c94d48c81719ec700ef110de27499d569bf1e4bc'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
