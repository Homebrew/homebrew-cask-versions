cask :v1 => 'emacs-nightly' do
  version '2015-11-01_01-41-06-b692d6a'
  sha256 '5ed6ca346a662e76ef502ba2a681f77dc4063a087316b533db2dc1343ed48b8c'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
