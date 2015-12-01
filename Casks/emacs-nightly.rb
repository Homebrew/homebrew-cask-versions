cask :v1 => 'emacs-nightly' do
  version '2015-11-30_01-41-16-f248292'
  sha256 '60e2f667a531e0b0a687288a738e41c1a8eceb048626a0c49b1c134c03d09b31'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
