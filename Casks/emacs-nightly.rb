cask 'emacs-nightly' do
  version '2016-12-20_01-45-32-35aaa6b6aa9a2e7b42465603fb32355a009c510f'
  sha256 'afbb6cb1ced39445aa3ce191944e726e6f9efbd8293784723b05beb2a915370b'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '37f1b3399d9ea8aac68644993eca061dca78e37370fbd6e5d8818300e10c6161'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
