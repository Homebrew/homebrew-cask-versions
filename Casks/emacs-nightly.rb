cask :v1 => 'emacs-nightly' do
  version '2015-10-25_01-41-05-0afbc5b'
  sha256 'ec874fea116712c49c4a7f12e283d47369b355462796290752b1a89e4dba3894'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
