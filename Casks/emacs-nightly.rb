cask :v1 => 'emacs-nightly' do
  version '2015-09-22_01-41-15-bfa1aa8'
  sha256 'f1eb05822ec187867df8d14299b4364b0cc87f7af95abf7c5c2e2049bfa87365'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
