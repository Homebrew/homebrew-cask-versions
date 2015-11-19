cask :v1 => 'emacs-nightly' do
  version '2015-11-18_01-41-06-c6457ce'
  sha256 'ed23b045991007523ac36f9b93da7b8e9f05a022dcac16359a1baa4595d9afea'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
