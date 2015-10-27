cask :v1 => 'emacs-nightly' do
  version '2015-10-26_01-41-01-1bab3ce'
  sha256 'd2932f83ce8327b400a1150c2cc2d734cdd132eec57dd0746f79711efd24426b'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
