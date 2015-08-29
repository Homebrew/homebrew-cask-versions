cask :v1 => 'emacs-nightly' do
  version '2015-08-28_01-41-37-572f68e'
  sha256 'a470ef2b6f98e0e1be4a39d2fcedaf692f6e9b345682b8dcdc386ef5313e4d4a'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
