cask :v1 => 'emacs-nightly' do
  version '2015-09-15_01-43-10-a1cbf94'
  sha256 'f912b26e9803f7c8920f4665307728ddaadafda6a48c8ad1e738c49eb4a5a6a3'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
