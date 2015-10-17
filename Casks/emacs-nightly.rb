cask :v1 => 'emacs-nightly' do
  version '2015-10-16_01-41-16-844de50'
  sha256 '1e048edb70d8b7e0f4173a97c0a990b55342ccfbc5ca5cf7307d3a20536b2a47'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
