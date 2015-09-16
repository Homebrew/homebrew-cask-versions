cask :v1 => 'emacs-nightly' do
  version '2015-09-16_01-42-32-bc67e46'
  sha256 '255cb95a8ee9e4b0a53838a70df8124ac93724dc51b22144d58fce2aeb6f8171'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
