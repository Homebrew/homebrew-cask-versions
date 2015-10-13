cask :v1 => 'emacs-nightly' do
  version '2015-10-13_01-41-11-e53e1a0'
  sha256 'ed2e7cc1da435b706cbe93be48cedccbb41f636f5741262182fe5aab3da383a4'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
