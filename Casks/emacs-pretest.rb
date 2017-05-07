cask 'emacs-pretest' do
  version '25.2-rc2'
  sha256 '1f5cc002a706915551d406f9bd465229fee749538a54f10fc52b27add597304d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: 'ea71786763eedb4198a155cc3f0c7728f0757ea8dc3473c6494d7e8b99ec2ff8'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
