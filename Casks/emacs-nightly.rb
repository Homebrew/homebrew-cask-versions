cask :v1 => 'emacs-nightly' do
  version '2015-12-01_01-41-12-1c25d37'
  sha256 '6135757e976f63627a8a9230ebc8818a443449583f7e6393be9a97a0d20789ab'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
