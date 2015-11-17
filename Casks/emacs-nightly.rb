cask :v1 => 'emacs-nightly' do
  version '2015-11-17_01-41-07-58e6235'
  sha256 '069586e3cfbe2c56912ab2c50ed16b4aead6c07a9bb6abf4bab42d4f6ca50d5a'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
