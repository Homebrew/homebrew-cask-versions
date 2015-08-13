cask :v1 => 'emacs-nightly' do
  version '2015-08-13_01-41-00-e4de91d'
  sha256 '0a5924ddff0da3b8975bae6532f4bc65af6958b5fd9e3c65374d9522a6f1055d'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
