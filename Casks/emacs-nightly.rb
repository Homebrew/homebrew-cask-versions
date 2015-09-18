cask :v1 => 'emacs-nightly' do
  version '2015-09-17_01-42-36-7366f80'
  sha256 '9542690edd7d15d4ba62e5aaadfe0a67c72411b30b752a2288329fe23c2c319d'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
