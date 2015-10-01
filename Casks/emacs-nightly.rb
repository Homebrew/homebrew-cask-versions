cask :v1 => 'emacs-nightly' do
  version '2015-10-01_01-41-05-9e4a6ad'
  sha256 'b07e69ace1c1fcab400713da152e4d67cf52f614caad7e40221621a427490137'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
