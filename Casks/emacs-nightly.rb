cask :v1 => 'emacs-nightly' do
  version '2015-09-29_01-41-03-50e844c'
  sha256 '79cd71419e666b9e936494507daf9cdbb2e205068d7702bf62b4d24e63eb70c7'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
