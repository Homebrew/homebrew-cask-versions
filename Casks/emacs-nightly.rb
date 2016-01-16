cask 'emacs-nightly' do
  version '2016-01-15_01-41-02-de8c5f9'
  sha256 '8a6d7bbd09091b6d24f0fa2d4f3d32011b3a9fe8289625b27330b860de6f151b'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
