cask :v1 => 'emacs-nightly' do
  version '2015-10-29_01-41-02-dc95cb8'
  sha256 '9f79665e087f1738bb0d4308f25a06cc1f4bdc92f981adebaf32ec8f4cfe7c55'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
