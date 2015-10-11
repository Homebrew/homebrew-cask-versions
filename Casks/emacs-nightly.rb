cask :v1 => 'emacs-nightly' do
  version '2015-10-10_01-41-03-bb7c182'
  sha256 'be698625dde672648f066790ad39aa8441617771d0963837bb181580b321cc61'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
