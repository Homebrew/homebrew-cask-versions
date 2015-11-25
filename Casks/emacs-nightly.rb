cask :v1 => 'emacs-nightly' do
  version '2015-11-25_01-41-19-c378d6c'
  sha256 'ac738905c1e235224b0eab3f781d32a822ab59ef48bab6a2c9c3a4c8ed631abb'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
