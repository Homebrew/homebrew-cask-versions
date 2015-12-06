cask :v1 => 'emacs-nightly' do
  version '2015-12-05_01-41-18-ffefb6e'
  sha256 '55ab93658a58fcb80cf0356c2c5dbf3de8ccfd5fece30acb8d5c819adbfea7f4'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
