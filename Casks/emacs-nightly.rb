cask :v1 => 'emacs-nightly' do
  version '2015-10-05_01-41-25-76d5122'
  sha256 '3249aa77052c817d7e6c8ab71881b82b8a2eee915b7b011219e297f10770227e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
