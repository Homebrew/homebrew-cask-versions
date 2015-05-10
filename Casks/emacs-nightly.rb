cask :v1 => 'emacs-nightly' do
  version '2015-05-09_01-43-09-e0c7e10'
  sha256 'e26f7cfccaafcef44a703c440e66f027a89fc888f2c00c2d83e5a37e965d42f1'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
