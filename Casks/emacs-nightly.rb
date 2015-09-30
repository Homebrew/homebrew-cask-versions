cask :v1 => 'emacs-nightly' do
  version '2015-09-30_01-41-00-d1fb5e6'
  sha256 '6989df7c28e13f04c4c0679aeb594256325cef1119aff64a3635e8f39a406781'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
