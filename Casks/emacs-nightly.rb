cask :v1 => 'emacs-nightly' do
  version '2015-09-02_01-41-01-3086627'
  sha256 '2e086b35562f963eda3cb933e27a962b8ca4bab71649fd8f63bb6f051a35dc14'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
