cask 'emacs-pretest' do
  version '26.1-rc1'
  sha256 '8d921bece3244d911e975d71d7ef1b0f80e18c81f0b500e9c854d03b28ea2267'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: '43d1a12e3ae12b9b66a3c5717039e9496ac3cad091077d750ab9237b8e19af9d'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
