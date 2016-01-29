cask 'emacs-nightly' do
  version '2016-01-28_01-41-00-c261ef3e9421e868185e3d79dbbf03d28584decc'
  sha256 '21ad4fdde03a9a5c94b1cd621fc96b2b2d2a8c31f3164ef0b67bff1cb7e822f1'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
