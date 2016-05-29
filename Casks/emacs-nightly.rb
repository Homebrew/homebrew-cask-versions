cask 'emacs-nightly' do
  version '2016-05-28_01-41-42-66cd9187e396abfa7220d6a8f8d1a7064ef20b1e'
  sha256 '2049b76c6c5d01b27184ffd387352ab83291bdeb6790631f22b4acff03ae8982'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
