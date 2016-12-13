cask 'emacs-nightly' do
  version '2016-12-13_01-45-21-dc833039179ee11dae9aeb15b7d75e7435f7f1c9'
  sha256 '85950b2b3a44c897f25d20b9781eb00c5a4616226015dde680e5de8e827be856'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '884fba7a2a4fdd4d69668cf941b6c7ec778496d85088ec4c1538d7243f79c100'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
