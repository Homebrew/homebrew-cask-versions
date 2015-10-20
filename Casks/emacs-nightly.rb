cask :v1 => 'emacs-nightly' do
  version '2015-10-20_01-41-01-10df031'
  sha256 '0dace20bd517d1339f0e89d6c84baacb609872ef096a60abbb4ad82dff44b44c'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
