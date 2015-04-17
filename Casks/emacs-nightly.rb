cask :v1 => 'emacs-nightly' do
  version '2015-04-16_01-40-47-c6e93df'
  sha256 'e53d3ca7138fd1c236d75327fa67bdf6c9560c00a38772e27e66f9964de30808'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
