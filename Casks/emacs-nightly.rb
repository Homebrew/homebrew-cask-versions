cask 'emacs-nightly' do
  version '2016-06-13_01-41-42-ab182c624868fcc0ed97597db669911099d4bd28'
  sha256 '9fbdcde5f093836e3069251b68ad653a14b2dcd0934adbf74df884d1dbf91827'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
