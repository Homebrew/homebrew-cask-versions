cask :v1 => 'emacs-nightly' do
  version '2015-10-06_01-41-31-25b4572'
  sha256 '6e16a72b9e019db1a0d630ffbfca98d3c7e834bb64700fa67f731fa34dbf06c5'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
