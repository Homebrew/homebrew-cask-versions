cask :v1 => 'emacs-nightly' do
  version '2015-10-09_01-41-03-c4d8c6a'
  sha256 'c94b766b01a7cb9b2096226836683c5eb5b79b94bf08abcc176d9e360a3cc9b6'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
