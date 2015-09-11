cask :v1 => 'emacs-nightly' do
  version '2015-09-10_01-41-00-831945a'
  sha256 '1941fca6a3a498f713a60359fc82965c0a079aba01772e6e8f169fe7261dc768'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
