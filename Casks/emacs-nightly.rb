cask :v1 => 'emacs-nightly' do
  version '2015-09-25_01-41-00-1657ba7'
  sha256 '8d51fb2b7830907a2a4087aa629859aac22a1973aa63a4a94a10e3c77eefc98a'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
