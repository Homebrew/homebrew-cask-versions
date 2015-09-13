cask :v1 => 'emacs-nightly' do
  version '2015-09-12_01-41-34-fc9dc03'
  sha256 'a7efc54c639e4ab94b58158b0d20adb5f7faabae8ce5334f56698126c4cca01b'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
