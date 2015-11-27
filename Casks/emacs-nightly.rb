cask :v1 => 'emacs-nightly' do
  version '2015-11-26_01-41-15-82a8ad2'
  sha256 '4911506aa996f1ce57def64179491a80fda9f19c4430a6015d1ad65e5b8bb6a6'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
