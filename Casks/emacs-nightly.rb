cask :v1 => 'emacs-nightly' do
  version '2015-12-07_01-41-26-8f72556'
  sha256 '526ab7c559aafaa412ff68513e1d8cb0eb8fbb0875a351fd29981774889b87e8'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
