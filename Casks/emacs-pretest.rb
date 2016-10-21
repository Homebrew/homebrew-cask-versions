cask 'emacs-pretest' do
  version '25.1-rc2'
  sha256 '66439f5ac002c549ec82f43843b10e1157725c6ddb5c49aebb491415c0d16c5c'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: 'fc552b2ebb1f73ccc9d560556874154977da5e89e61fca41c4196db4e2fc2583'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
