cask :v1 => 'emacs-nightly' do
  version '2015-12-03_01-41-12-354a1fc'
  sha256 'b073c9582a6f7be783890f33eced298ecbd1013894b5379756f748c0f253d749'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
