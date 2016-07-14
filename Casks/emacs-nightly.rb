cask 'emacs-nightly' do
  version '2016-07-14_01-41-56-453f883ef81388c39193b9289ef703954e9bc270'
  sha256 'b28e649604dca73c242e91131dd8c37df52c0d2bd3239443adc2eaec2c365ae1'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
