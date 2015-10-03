cask :v1 => 'emacs-nightly' do
  version '2015-10-03_01-41-07-40892b4'
  sha256 '5b5291907e49f81bf0a8207e0f15d9b976fbdfd8253505f87334fc5c920a4f52'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
