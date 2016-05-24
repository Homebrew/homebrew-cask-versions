cask 'emacs-nightly' do
  version '2016-05-24_01-41-31-850bcb1e5850eeea9ab04bdca33e2df10d7ea7ce'
  sha256 '3a046e45d19562f4a3a8619f4b61eeea73052f2199e60ba98478b74a4f071b36'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
