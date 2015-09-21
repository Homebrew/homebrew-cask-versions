cask :v1 => 'emacs-nightly' do
  version '2015-09-20_01-40-55-00a65e3'
  sha256 '6c98176b441565a73be871acaaa942464835ff7372c1047826d858a0b182aa50'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
