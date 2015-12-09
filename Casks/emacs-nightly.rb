cask :v1 => 'emacs-nightly' do
  version '2015-12-08_01-41-22-6148555'
  sha256 '35e997839237b38a496bec308933784e84ba6ad5f469577b545a8066d4e84a9e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
