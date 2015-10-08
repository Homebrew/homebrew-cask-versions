cask :v1 => 'emacs-nightly' do
  version '2015-10-07_01-41-07-96973de'
  sha256 '0e1f6d89c91c11472a56e7625bf409afc2adb7976c0f119a0c0f2e5d82e56317'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
