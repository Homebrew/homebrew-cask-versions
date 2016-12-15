cask 'emacs-nightly' do
  version '2016-12-15_01-45-24-09a66ceb5e906e704be58d5f40c45096307f0b9e'
  sha256 '7f2bebff7c199e90e813d92fdb5baff06943b8a62e1f402f1a5c6dc478246d7f'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'e9c256e34d8a83184879f528599bbfb4a2881dfd83f8072e11852bb581b2d4f7'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
