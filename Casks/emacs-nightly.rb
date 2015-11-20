cask :v1 => 'emacs-nightly' do
  version '2015-11-19_01-41-03-ebad964'
  sha256 'b985704371201955a4cd5643aa37d37a40e7431cf9d0eaf6a1058c85971283cb'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
